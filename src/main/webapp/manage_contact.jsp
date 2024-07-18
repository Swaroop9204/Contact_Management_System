<%@page import="java.util.Iterator"%>
<%@page import="com.practice.cms.entity.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact List</title>
<link rel="stylesheet" href="StyleSheets/contactlist.css">
</head>
<body>
<div class="contact-list-container">
    <h1>Contact List</h1>
    <% 
        List<Contact> list = (List<Contact>) request.getAttribute("list");
    %>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Number</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <% for(Contact contact :list) {
                %>
                <tr>
                    <td><%= contact.getContactName() %></td>
                    <td><%= contact.getCotactNumber() %></td>
                    <td><a href="update_request?id=<%= contact.getContactId() %>"><button>Edit</button></a></td>
                    <td><a href="delete_contact?id=<%= contact.getContactId() %>"><button>Delete</button></a></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
