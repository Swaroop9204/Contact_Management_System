<%@page import="com.practice.cms.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Contact</title>
<link rel="stylesheet" href="StyleSheets/updatecontact.css">
</head>
<body>
<div class="update-contact-container">
    <h1>Update Contact</h1>
    <% 
        Contact contact = (Contact) request.getAttribute("record");
    %>
    <form action="update" method="post">
        <input type="text" value="<%= contact.getContactId() %>" name="id" readonly hidden>
        <div class="form-group">
            <label for="contactName">Contact Name:</label>
            <input type="text" id="contactName" placeholder="Enter contact name" value="<%= contact.getContactName() %>" name="contactName" required>
        </div>
        <div class="form-group">
            <label for="contactNumber">Contact Number:</label>
            <input type="text" id="contactNumber" placeholder="Enter number" value="<%= contact.getCotactNumber() %>" name="contactNumber" required>
        </div>
        <input type="submit" value="Update">
    </form>
</div>
</body>
</html>
