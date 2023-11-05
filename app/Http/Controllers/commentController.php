<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Models\post;
use App\Models\comment;
use DB;

class commentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $comment=DB::table('comments')
                ->join('users','comments.userid','=','users.id')
                ->join('posts','comments.postid','=','posts.id')
                ->select('*','users.id as uid','posts.id as pid','comments.id as cid')
                ->get();
        return response()->json($comment);
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
        $postid=$request->get('postid');
        $text=$request->get('text');

        $comment=new comment([
            'userid'=>$userid,
            'postid'=>$postid,
            'text'=>$text
        ]);
        $comment->save();
        echo "Data Insert";
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
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
    public function update(Request $request,  $id)
    {
        $userid=$request->get('userid');
        $postid=$request->get('postid');
        $text=$request->get('text');

        $comment=comment::find($id);
        $comment->userid=$userid;
        $comment->postid=$postid;
        $comment->text=$text;
        $comment->update();
        echo "Data Update";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $comment=comment::find($id);
        $comment->delete();
        echo "Record Deleted";
    }




    public function addComment(Request $request)
    {
        $user_id = $request->get('user_id');
        $post_id = $request->get('post_id');
        $text = $request->get('text');
       
            $newComment = new Comment([
                'userid' => $user_id,
                'postid' => $post_id,
                'text' => $text,
            ]);

            $newComment->save();
    
            $data['status']='success';

        return response()->json($data);
    }

    public function fetchcomments(Request $request){
        $post_id = $request->get('post_id');

        $comments = comment::join('users','comments.userid','=','users.id')->where('postid','=',$post_id)->get();

        return response()->json($comments);
    }
}
