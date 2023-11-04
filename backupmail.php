
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

        $input = $request->all();
        $password=$input['password'];
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);


        $token = $user->createToken('MyAuthApp')->plainTextToken;

        // Generate PDF content
        $pdfFileName = "details_" . $user->name . ".pdf";
        $pdfPath = storage_path('app/' . $pdfFileName);
        PDF::loadView('pdf_template', ['username'=>$input['username'],'email'=>$input['email'],'contact'=>$input['contact'],'password'=>$password])->save($pdfPath);

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
