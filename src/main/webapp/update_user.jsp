<%@page import="com.practice.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Profile</title>
<link rel="stylesheet" href="StyleSheets/manageprofile.css">
</head>
<body>
<div class="manage-profile-container">
    <h1>Manage Profile</h1>
    <% 
        User user = (User) session.getAttribute("user");
        String name = user != null ? user.getUserName() : "";
        String email = user != null ? user.getEmail() : "";
        String password = user != null ? user.getPassword() : "";
        String error = (String) request.getAttribute("error");
    %>
    <form action="manage_profile" method="post">
        <div class="form-group">
            <label for="userName">Name:</label>
            <input type="text" id="userName" placeholder="Enter your name" value="<%= name %>" name="userName" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" placeholder="Enter email" value="<%= email %>" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" placeholder="Enter password" value="<%= password %>" name="password" required>
        </div>
        <input type="submit" value="Update Profile">
    </form>
    <% if (error != null) { %>
    <h1 class="error"><%= error %></h1>
    <% } %>
</div>
</body>
</html>
