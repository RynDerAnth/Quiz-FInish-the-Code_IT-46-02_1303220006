<%-- 
    Document   : welcome
    Created on : 26 Nov 2024, 11.03.33
    Author     : helmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.latihanwebmvc.Database.DBUtil"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <%
        try {
            Connection conn = DBUtil.getConnection();
            String query = "SELECT * FROM users";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
    %>
    <h2>Selamat datang, <%= rs.getString("full_name") %>! anda berhasil Login!</h2>  <!-- Menampilkan nama pengguna yang login -->
    <%
            }
            conn.close();
        } catch (Exception e) {
            out.println("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
        }
    %>
    <!-- Tombol untuk liah list user -->
    <form action="userList" method="get">
        <button type="submit">List User</button>
    </form>
    <!-- Tombol untuk logout -->
    <form action="logout" method="get">
        <button type="submit">Logout</button>
    </form>
</body>
</html>

