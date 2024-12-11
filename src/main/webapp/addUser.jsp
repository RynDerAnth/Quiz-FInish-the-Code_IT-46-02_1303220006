<%-- 
    Document   : addUser
    Created on : 11 Dec 2024, 20.42.33
    Author     : Administrator
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Add User</title>
</head>
<body>
    <h2>Add User</h2>

    <form action="addUser" method="post">
        <input type="hidden" name="id">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" name="password" required><br><br>

        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" required><br><br>

        <button type="submit">Add User</button>
    </form>
</body>
</html>