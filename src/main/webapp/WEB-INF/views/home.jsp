<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: white;
            padding: 40px;
            width: 350px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
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
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            color: white;
        }

        .add {
            background: #28a745;
        }

        .view {
            background: #007bff;
        }

        .btn:hover {
            opacity: 0.9;
        }
    </style>
</head>

<body>

<div class="card">
    <h1>Welcome, ${username} 👋</h1>

    <a class="btn add" href="addentry">➕ Add Entry</a>
    <a class="btn view" href="seeall">📄 See All Entries</a>
</div>

</body>
</html>
