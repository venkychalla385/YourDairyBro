<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Required for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: white;
            padding: 40px;
            width: 90%;
            max-width: 350px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
        }

        h1 {
            margin-bottom: 25px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            border: none;
            border-radius: 8px;
            background: #28a745;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            opacity: 0.9;
        }

        .link {
            margin-top: 15px;
            display: block;
            text-decoration: none;
            color: #007bff;
            font-size: 14px;
        }

        
        
    </style>
</head>

<body>

<div class="card">
    <h1>Create Account ✨</h1>

    <form action="saving" method="POST">
        <input type="text" name="username" placeholder="Enter your username" required>
        <input type="password" name="password" placeholder="Enter your password" required>

        <button type="submit">Register</button>
    </form>

    <a class="link" href="login">Already have an account? Login</a>
</div>

</body>
</html>
