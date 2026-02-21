<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- IMPORTANT for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
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
            text-align: center;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }

        .login {
            background: #007bff;
        }

        .register {
            background: #28a745;
        }

        .btn:hover {
            opacity: 0.9;
        }

        /* Mobile fine-tuning */
        @media (max-width: 480px) {
            h1 {
                font-size: 22px;
            }

            .btn {
                font-size: 15px;
            }
        }
    </style>
</head>

<body>

<div class="card">
    <h1>Welcome to My Project 🚀</h1>

    <a href="login" class="btn login">Login</a>
    <a href="register" class="btn register">Register</a>
</div>

</body>
</html>
