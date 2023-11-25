<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Models\post;
use App\Models\likes;
use App\Models\tags;
use App\Models\comment;
use App\Models\profile;
use DB;

class postController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $post=DB::table('posts')
                ->select('*','posts.id as pid')
                ->orderBy('posts.id','desc')
                ->get();
        return response()->json($post);
        
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {   
        $userid=$request->get('userid');
        $title=$request->get('title');
        $description=$request->get('description');


        preg_match_all('/#(\w+)/', strtolower($description), $matches);
        // $hashtags = preg_replace('/(#.*\s*)/','',$description);

        $hashtags = json_encode($matches[1]);
        // return response($hashtags);


        // $filename = [];
        // foreach($request->file('photopath') as $image)
        // {
        //     $imgname = $image->getClientOriginalName();
        //     $image->move(public_path().'/img/',$imgname);
        //     $filename[] = $imgname;
        // }
        // $images = json_encode($filename);




        $maxFileSize = 2097152; // 2 MB in bytes
        $uploadedFiles = $request->file('photopath');
    
        foreach ($uploadedFiles as $image) {
            if ($image->getSize() > $maxFileSize) {
                return response()->json(['error' => 'File size exceeds the allowed limit.']);
            }
        }
    
        $filename = [];
    
        foreach ($uploadedFiles as $image) {
            $imgname = $image->getClientOriginalName();
            $image->move(public_path().'/img/', $imgname);
            $filename[] = $imgname;
        }
    
        $images = json_encode($filename);






        $filename1 = [];
        // foreach($request->file('thumbnail') as $image1)
        // {
        //     $imgname1 = $image1->getClientOriginalName();
        //     $image1->move(public_path().'/img/',$imgname1);
        //     $filename1[] = $imgname1;
        // }
        // $images1 = json_encode($filename1);

        // $image=$request->file('photopath');
        // $imagetemp=$image->getClientOriginalName();
        // $image->move('img',$imagetemp);

        // $image1=$request->file('thumbnail');
        // $imagetemp1=$image1->getClientOriginalName();
        // $image1->move('img',$imagetemp1);

        // $views=$request->get('views');

        $insert=new post([
            'userid'=>$userid,
            'title'=>$title,
            'description'=>$description,
            'tags'=>$hashtags,
            'photopath'=>$images,
            // 'thumbnail'=>$images1,
            'active'=>'0'
        ]);
        $insert->save();

        foreach($matches[1] as $h){
            $count = tags::where('name','=',$h)->count();

            if($count == 0){
                $tag = new tags([
                    'name'=>$h
                ]);

                $tag->save();
            }

            else{
                $total_posts = tags::where('name','=',$h)->first();
                $total_posts->total_posts += 1;

                $total_posts->update();
            }
        }


        echo "Data Insert";
        
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //

        // $post = post::find($id);

        $post = post::join('users','posts.userid','=','users.id')->where('posts.id','=',$id)->first();

        return response()->json($post);

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $delete=post::find($id);
        $delete->delete();
        echo "Record Deleted";
    }

    public function like (Request $request){
        $user_id = $request->get('user_id');
        $post_id = $request->get('post_id');

        $postliked = likes::where('user_id','=',$user_id)->where('post_id','=',$post_id)->first();

        // return ($postliked);


        if($postliked == ""){
            $like = new likes([
                'user_id'=>$user_id,
                'post_id'=>$post_id
            ]);
    
            $like->save();    

            $post = post::find($post_id);
            $post->likes = $post->likes + 1;
            $post->update();
        }

        else{
            $postliked->delete();
            $post = post::find($post_id);
            $post->likes = $post->likes - 1;
            $post->update();
        }

        
        $liked_posts = likes::where('user_id','=',$user_id)->select('post_id')->get();

        $liked_array = array(); 

        foreach($liked_posts as $l){
            array_push($liked_array,$l->post_id);
        }

        // $data['status']= 'success';



        return response()->json($liked_array);
    }

    public function fetchlikes (Request $request){
        $user_id = $request->get('user_id');

        $liked_posts = likes::where('user_id','=',$user_id)->select('post_id')->get();

        $liked_array = array(); 

        foreach($liked_posts as $l){
            array_push($liked_array,$l->post_id);
        }

        // $data['status']= 'success';



        return response()->json($liked_array);
    }


    public function getPostsForUser($userId)
    {
        $userPosts = DB::table('users')
            ->join('posts', 'users.id', '=', 'posts.userid')
            ->select('posts.*')
            ->where('users.id', $userId)
            ->get();

        return response()->json(['posts' => $userPosts]);
    }

    public function fetchuser($Id){
        $user = user::find($Id);

        return response()->json($user);
    }


 
    public function getLikedPosts($Id)
    {
        $userPosts = DB::table('likes')
            ->join('posts', 'posts.id', '=', 'likes.post_id')
            ->select('*', 'likes.id as lid')
            ->where('likes.user_id','=', $Id)
            ->get();

            return response()->json($userPosts);
    }

    // public function getCommentsPosts($id)
    // {
    //     $userPosts = DB::table('users')
    //         ->join('comments', 'users.id', '=', 'comments.userid')
    //         ->select('*')
    //         ->where('users.id','=', $id)
    //         ->get();

    //     return response()->json(['posts' => $userPosts]);
    // }

    public function getCommentsPosts($Id)
    {
        $userPosts = DB::table('comments')
            ->join('posts', 'posts.id', '=', 'comments.postid')
            ->select('*', 'comments.id as lid')
            ->where('comments.userid','=', $Id)
            ->get();

            return response()->json($userPosts);
    }

    public function deletelike($Id){
        $like = likes::find($Id);
        $like->delete();
        return response()->json($data['status']="success");
    }

    public function deletecomment($Id)
    {
        $comment = comment::find($Id);
        $comment->delete();
        return response()->json($data['status']="success");
    }

    public function fetchtags()
    {
        $tags = tags::orderBy('total_posts', 'desc')
                    ->take(6)
                    ->distinct()
                    ->get();
        return response()->json($tags);
    }
    
    // public function separatetag($Id)
    // {
    //     $posts = DB::table('posts')
    //     ->join('tags', 'posts.tags', '=', 'tags.total_posts')
    //     ->select('posts.*', 'tags.total_posts')
    //     ->get();
    
    //     return response()->json($posts);
    // }

     //    $authorpost = post::where('userid','=',$Id)->get();
    //    return response()->json($authorpost);



    public function authorpost($userid)
    {
   

    // $data = DB::table('profiles')
    // ->join('posts', 'profiles.userid', '=', 'posts.userid')
    // ->where('profiles.userid', $userid)
    // ->select('profiles.image', 'profiles.banner')
    // ->first();

    $data = profile::where('userid', '=', $userid)->first();

$authorpost = post::where('userid', $userid)->get();

return response()->json(['profileAndPosts' => $data, 'authorPosts' => $authorpost]);
    }





    public function countComment($postId)
{
    $commentCount = DB::table('comments')
        ->where('postid', $postId)
        ->count();

    return $commentCount;
}

    public function fetchtagposts(Request $request){

        $tag = $request->get('tag');

        $posts = post::get();

        $tagPosts = array();

        foreach($posts as $p){
            if( in_array($tag, json_decode($p->tags))){
                array_push($tagPosts, $p);
            }
        }

    return response()->json($tagPosts);
    }



    public function searchByUsername(Request $request)
    {
    $search = $request->input('username');
    
        $users = User::where('username', 'LIKE', $search . '%')->get();
    
        $tags = tags::where('name', 'LIKE', $search . '%')->get();
    
        $results = [
            'users' => $users,
            'tags' => $tags,
        ];
    
        return response()->json($results);
    }


}
