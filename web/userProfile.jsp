<%--
    Document   : userProfile
    Created on : Mar 27, 2024, 6:25:50 AM
    Author     : Krafty Coder
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, jakarta.servlet.*, jakarta.servlet.http.*" %>

<% if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {html
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
    </head>
    <body>
        <h1>Your profile page</h1>
    </body>
</html>
<% } %>