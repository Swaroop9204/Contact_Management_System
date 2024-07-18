<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Contact</title>
<link rel="stylesheet" href="StyleSheets/addcontact.css">
</head>
<body>
<div class="add-contact-container">
    <h1>Add Contact</h1>
    <form action="addcontact" method="post">
        <input name="contactName" placeholder="Enter contact name" type="text" required>
        <input name="contactNumber" placeholder="Enter contact number" type="text" required>
        <input type="submit" value="Add Contact">
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
