<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Entry</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .entry-card {
            background: white;
            padding: 35px;
            width: 400px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 15px;
        }

        .label {
            font-weight: bold;
            color: #555;
            margin-top: 20px;
        }

        .value {
            margin-top: 8px;
            padding: 10px;
            background: #f1f3f5;
            border-radius: 6px;
            color: #333;
        }

        .btn {
            display: block;
            margin-top: 25px;
            text-align: center;
            padding: 10px;
            background: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }

        .btn:hover {
            background: #0056b3;
        }
    </style>
</head>

<body>

<div class="entry-card">
    <h1>Entry Details</h1>

    <div class="label">Entry Date</div>
    <div class="value">${entry.entrydate}</div>

    <div class="label">Description</div>
    <div class="value">${entry.description}</div>

    <a class="btn" href="seeall">⬅ Back to Entries</a>
</div>

</body>
</html>
