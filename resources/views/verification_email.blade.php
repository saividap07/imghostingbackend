<!DOCTYPE html>
<html>
<head>
    <title>Email Verification</title>
</head>
<body>
    <h1>Verify Your Email Address</h1>
    <p>Hello, {{ $user->name }},</p>
    <p>Click the following link to verify your email address:</p>
    <a href="{{ route('email.verify', ['token' => $user->verification_token]) }}">Verify Email</a>
</body>
</html>
