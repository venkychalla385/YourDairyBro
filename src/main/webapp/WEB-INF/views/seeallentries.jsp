<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Entries</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            padding: 40px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        th {
            background: #007bff;
            color: white;
            padding: 12px;
            text-align: center;
        }

        td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background: #f1f1f1;
        }

        a {
            text-decoration: none;
            padding: 6px 10px;
            border-radius: 5px;
            font-size: 14px;
            color: white;
        }

        .view {
            background: #28a745;
        }

        .update {
            background: #ffc107;
            color: black;
        }

        .delete {
            background: #dc3545;
        }

        .actions a {
            margin: 0 4px;
        }
    </style>
</head>

<body>

<h1>Your Entries</h1>

<table>
    <tr>
        <th>Date</th>
        <th colspan="3">Actions</th>
    </tr>

    <c:forEach var="entry" items="${entries}">
        <tr>
            <td>${entry.entrydate}</td>

            <td class="actions">
                <a class="view" href="seeone?id=${entry.id}">View</a>
            </td>

            <td class="actions">
                <a class="update" href="update?id=${entry.id}">Update</a>
            </td>

            <td class="actions">
                <a class="delete" href="delete?id=${entry.id}"
                   onclick="return confirm('Are you sure you want to delete this entry?')">
                   Delete
                </a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
