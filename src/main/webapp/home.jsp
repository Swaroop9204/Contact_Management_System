<%@page import="com.practice.cms.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="StyleSheets/home.css">
</head>
<body>
<div class="contact">
    <h1>Welcome Back</h1>
    <%
        User user = (User) session.getAttribute("user");
        String addContactPage = user != null ? "addcontact.jsp" : "login.jsp";
        String manageContactPage = user != null ? "manage_contact" : "login.jsp";
        String manageProfilePage = user != null ? "manageprofile.jsp" : "login.jsp";
    %>
    <a href="<%= addContactPage %>" class="add-contact"><button>Add Contact</button></a>
    <a href="<%= manageContactPage %>"><button class="manage-contact">Manage Contact</button></a>
    <a href="<%= manageProfilePage %>" class="manage-profile"><button>Manage Profile</button></a>
</div>
</body>
</html>
