<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Cookies</title>
</head>
<body>
    <h2>Delete Cookies</h2>
    <% 
        // Get all cookies associated with the request
        Cookie[] cookies = request.getCookies();
        
        // Check if cookies exist
        if (cookies != null && cookies.length > 0) {
            // Iterate through each cookie and delete it
            for (Cookie cookie : cookies) {
                cookie.setMaxAge(0); // Set the age of the cookie to 0, effectively deleting it
                cookie.setPath("/"); // Set the path to the root so it applies to the entire application
                ((HttpServletResponse) response).addCookie(cookie); // Cast response to HttpServletResponse and add the modified cookie
            }
            out.println("<p>All cookies have been deleted.</p>");
        } else {
            out.println("<p>No cookies found.</p>");
        }
    %>
</body>
</html>
