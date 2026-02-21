<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
</head>
<body>
<h1>Welcome to update FORM</h1>
<br><br>
<form action="updateform" method="POST">

<input type="hidden" name="id" value="${userid}">
<input type="text" name="description" placeholder="Enter your description"> <br><br>

<button type="submit">Submit</button>
</form>





</body>
</html>