<%-- 
    Document   : viewCookies
    Created on : Apr 1, 2024, 4:06:26 PM
    Author     : Krafty Coder
--%>

<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Cookies</title>
</head>
<body>
    <h2>View Cookies</h2>
    <% 
        // Get all cookies associated with the request
        Cookie[] cookies = request.getCookies();
        
        // Check if cookies exist
        if (cookies != null && cookies.length > 0) {
            out.println("<p><strong>Existing Cookies:</strong></p>");
            out.println("<ul>");
            
            // Iterate through each cookie and display its name and value
            for (Cookie cookie : cookies) {
                out.println("<li>" + cookie.getName() + " : " + cookie.getValue() + "</li>");
            }
            
            out.println("</ul>");
        } else {
            out.println("<p>No cookies found.</p>");
        }
    %>
</body>
</html>
