<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PDF Template</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .content {
            margin: 20px;
        }
    </style>
</head>
<body>
    <div class="content">
      <h1>Your Registration Details</h1>
<p>Username: {{ $username }}</p>
<p>Email: {{ $email }}</p>
<p>Contact: {{ $contact }}</p>
<p>Password: {{ $password }}</p> <!-- Display the password as-is -->

        <!-- You can add more dynamic content here as needed -->
    </div>
</body>
</html>
