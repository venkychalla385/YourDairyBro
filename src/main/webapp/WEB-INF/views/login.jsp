<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<>
    <title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <style>
	        body {
	            font-family: Arial, sans-serif;
	            background: linear-gradient(135deg, #667eea, #764ba2);
	            height: 100vh;
	            display: flex;
	            justify-content: center;
	            align-items: center;
	        }

	        .login-card {
	            background: white;
	            padding: 35px;
	            width: 340px;
	            border-radius: 12px;
	            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
	        }

	        h1 {
	            text-align: center;
	            margin-bottom: 25px;
	            color: #333;
	        }

	        input {
	            width: 100%;
	            padding: 10px;
	            margin-top: 12px;
	            border: 1px solid #ccc;
	            border-radius: 6px;
	            font-size: 14px;
	        }

	        button {
	            width: 100%;
	            padding: 10px;
	            margin-top: 20px;
	            background: #667eea;
	            border: none;
	            color: white;
	            font-size: 16px;
	            border-radius: 6px;
	            cursor: pointer;
	        }

	        button:hover {
	            background: #5a67d8;
	        }

	        .error {
	            color: red;
	            text-align: center;
	            margin-top: 10px;
	        }
	    </style>
	
   
</head>

<body>

<div class="login-card">
    <h1>Login</h1>

    <form action="authenticate" method="POST">
        <input type="text" name="username" placeholder="Enter your username" required><br><br>

        <input type="password" name="password" placeholder="Enter your password" required><br><br>

        <button type="submit">Login</button>
    </form>

    <!-- Optional error message -->
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
</div>

</body>
</html>
