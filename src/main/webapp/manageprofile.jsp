<%@page import="com.practice.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link rel="stylesheet" href="StyleSheets/profile.css">
</head>
<body>
<div class="profile-container">
    <h1>Profile</h1>
    <% 
        User user = (User) session.getAttribute("user"); 
        String userName = user != null ? user.getUserName() : "";
        String email = user != null ? user.getEmail() : "";
        String password = user != null ? user.getPassword() : "";
        String error = (String) request.getAttribute("error");
    %>
    <p><strong>Name:</strong> <%= userName %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Password:</strong> <%= password %></p>
    <div class="buttons">
        <a href="update_user.jsp"><button>Update</button></a>
        <a href="delete_user"><button>Delete</button></a>
    </div>
    <% if (error != null) { %>
    <h1 class="error"><%= error %></h1>
    <% } %>
</div>
</body>
</html>
