<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="StyleSheets/login.css">
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="login" method="post" class="form">
        <input type="text" placeholder="Enter email" name="email" required>
        <input type="password" placeholder="Enter password" name="password" required>
        <input type="submit" value="Login">
    </form>
    <% 
        String error = (String) request.getAttribute("error");
        if (error != null) { 
    %>
    <h1 class="error"><%= error %></h1>
    <% } %>
</div>
</body>
</html>
