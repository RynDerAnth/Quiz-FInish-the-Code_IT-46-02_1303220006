<%-- 
    Document   : UserList
    Created on : Dec 3, 2024, 7:09:32 AM
    Author     : helmy
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.mycompany.latihanwebmvc.Database.DBUtil"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
<head>
    <title>User List</title>
</head>
<body>
    <h2>User List</h2>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Full Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <%
            try {
                Connection conn = DBUtil.getConnection();
                String query = "SELECT * FROM users";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {
        %>
        <tbody>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("username") %></td>
                <td><%= rs.getString("full_name") %></td>
                <td>
                    <a href="editUser?id=<%= rs.getInt("id") %>">Edit</a>
                    <a href="deleteUser?id=<%= rs.getInt("id") %>">Delete</a>
                </td>
            </tr>
        </tbody>
        <%
                }
                conn.close();
            } catch (Exception e) {
                out.println("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
            }
        %>
    </table>
    <br>
    <a href="addUser.jsp">Tambah User Baru</a>
</body>
</html>
