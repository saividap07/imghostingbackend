<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Models\post;
use App\Models\likes;
use DB;

class postController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $post=DB::table('posts')
                ->join('users','posts.userid','=','users.id')
                ->select('*','posts.id as pid')
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


        preg_match_all('/#(\w+)/', $description, $matches);
        // $hashtags = preg_replace('/(#.*\s*)/','',$description);

        $hashtags = json_encode($matches[1]);
        // return response($hashtags);


        $filename = [];
        foreach($request->file('photopath') as $image)
        {
            $imgname = $image->getClientOriginalName();
            $image->move(public_path().'/img/',$imgname);
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

        $views=$request->get('views');

        $insert=new post([
            'userid'=>$userid,
            'title'=>$title,
            'description'=>$description,
            'tags'=>$hashtags,
            'photopath'=>$images,
            // 'thumbnail'=>$images1,
            'active'=>'0',
            'views'=>$views
        ]);
        $insert->save();
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
        }

        else{
            $postliked->delete();
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
}
