<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <style>
        h1 {
            color: teal; /* xanh ngọc */
        }
        .container {
            width: 300px;
            padding: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            background: #f9f9f9;
            font-family: sans-serif;
        }
        p {
            margin: 12px 0;
        }
        a {
            display: inline-block;
            margin-top: 12px;
            padding: 8px 12px;
            background-color: teal;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: darkcyan;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thanks for joining!</h1>
        <p>Here is the information you entered:</p>
        <p><strong>Email:</strong> ${user.email}</p>
        <p><strong>First Name:</strong> ${user.firstName}</p>
        <p><strong>Last Name:</strong> ${user.lastName}</p>

        <a href="index.html">Back to Home</a>
    </div>
</body>
</html>
