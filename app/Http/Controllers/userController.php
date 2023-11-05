<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;

use App\Models\Register;
use App\Models\profile;
use Illuminate\Support\Facades\Hash;
use PDF;
use Illuminate\Support\Facades\Mail;
use Validator;
use Illuminate\Support\Facades\Auth;



class userController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user=user::get();
        return response()->json($user);
    }




//         public function store_register(Request $request)
//         {
//             $validator = Validator::make($request->all(), [
//                 'username' => 'required',
//                 'email' => 'required|email',
//                 'contact' => 'required',
//                 'password' => 'required',
//                 'confirm_password' => 'required|same:password',
//             ]);

//             if ($validator->fails()) {
//                 return response()->json(['status' => 'error', 'message' => 'Validation failed', 'errors' => $validator->errors()], 422);
//             }
//             if (User::where('email', $request->email)->exists()) {
//                 return response()->json(['error' => 'Email already registered'], 422);
//             }

//             $arr=array();
//             $input = $request->all();
//             $password=$input['password'];
//             $input['password'] = bcrypt($input['password']);
//             $user = User::create($input);


//             $success['token'] =  $user->createToken('MyAuthApp')->plainTextToken;
//             $success['name'] =  $user->name;
//             $id = User::select('*')->orderBy('id','desc')->first();
//             $user_id = $id->id;

//             $success['id'] = $user_id;
//             $profile = new profile([
//                 'name'=>$request->name,
//                 'email'=>$request->email,
//                 'userid'=>$user_id
//             ]);

//             $profile->save();
// $success['status']="success";
//     $success['msg']="User created successfully.";
//     array_push($arr,$success);
// //return response()->json($arr);
        



//             // Generate PDF content
//             $pdfFileName = "details_" . $user->name . ".pdf";
//             $pdfPath = storage_path('app/' . $pdfFileName);
//             PDF::loadView('pdf_template', ['username'=>$input['username'],'email'=>$input['email'],'contact'=>$input['contact'],'password'=>$password])
//             ->save($pdfPath);

//             Mail::send('mailsending', ['user' => $user, 'pdfFileName' => $pdfFileName], function ($message) use ($user, $pdfPath, $pdfFileName) {
//         $message->to($user->email);
//         $message->subject("Congratulations 🎉 Your Registration Completed");

//         $message->attach($pdfPath, [
//             'as' => $pdfFileName,
//             'mime' => 'application/pdf',
//         ]);
//     });


//             unlink($pdfPath);

//             return response()->json(['status' => 'success', 'message' => 'User created successfully', 'token' => $token,$arr]);
//         }















public function store_register(Request $request)
{
    $validator = Validator::make($request->all(), [
        'username' => 'required',
        'email' => 'required|email',
        'contact' => 'required',
        'password' => 'required',
        'confirm_password' => 'required|same:password',
    ]);

    if ($validator->fails()) {
        return response()->json(['status' => 'error', 'message' => 'Validation failed', 'errors' => $validator->errors()], 422);
    }

    if (User::where('email', $request->email)->exists()) {
        return response()->json(['error' => 'Email already registered'], 407);
    }

    $input = $request->all();
    $password = $input['password'];
    $input['password'] = bcrypt($input['password']);
    $user = User::create($input);

    $profile = new Profile([
        'name' => $request->name,
        'email' => $request->email,
        'userid' => $user->id,
    ]);

    $profile->save();

    $token = $user->createToken('MyAuthApp')->plainTextToken;

    // Generate PDF content
    $pdfFileName = "details_" . $user->name . ".pdf";
    $pdfPath = storage_path('app/' . $pdfFileName);

    PDF::loadView('pdf_template', [
        'username' => $input['username'],
        'email' => $input['email'],
        'contact' => $input['contact'],
        'password' => $password,
    ])->save($pdfPath);

    Mail::send('mailsending', ['user' => $user, 'pdfFileName' => $pdfFileName], function ($message) use ($user, $pdfPath, $pdfFileName) {
        $message->to($user->email);
        $message->subject("Congratulations 🎉 Your Registration Completed");


        $message->attach($pdfPath, [
            'as' => $pdfFileName,
            'mime' => 'application/pdf',
        ]);
    });

    unlink($pdfPath);

    return response()->json(['status' => 'success', 'message' => 'User created successfully', 'token' => $token]);
}





public function verifyuser($id)
{
$user = user::find($id);
$user->active =1;
$user->update();
}







        public function login(Request $request)
     {
         $credentials = $request->only('email', 'password');

         $email = $request->get('email');

         if (Auth::attempt($credentials)) {
             $user = Auth::user();
             $token = $user->createToken('authToken')->plainTextToken;

             $user_details = user::where('email','=',$email)->first();

             return response()->json(['message' => 'success','token' => $token,'uid'=>$user_details->id,'username'=>$user_details->username], 200);
         }

         return response()->json(['message' => 'failed'], 401);
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
    // public function store(Request $request)
    // {
    //     $username=$request->get('username');
    //     $email=$request->get('email');
    //     $password=$request->get('password');
    //
    //     $user=new user([
    //         'username'=>$username,
    //         'email'=>$email,
    //         'password'=>$password,
    //         'type'=>'0',
    //         'active'=>'1'
    //     ]);
    //     $user->save();
    //     echo "Data Insert";
    // }

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
    public function update(Request $request, $id)
    {
        $username=$request->get('username');
        $email=$request->get('email');
        $password=$request->get('password');

        //return $username;
        $user=user::find($id);
        $user->username=$username;
        $user->email=$email;
        $user->password=$password;
        $user->update();
        echo "Data Update";

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user=user::find($id);
        $user->delete();
        echo "Record Deleted";
    }
}