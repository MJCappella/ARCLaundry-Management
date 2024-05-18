<%-- 
    Document   : Profile
    Created on : Apr 1, 2024, 4:27:08 PM
    Author     : Krafty Coder
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
     
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        p {
            margin: 10px 0;
        }
        strong {
            font-weight: bold;
        }
        .btn-logout {
            background-color: #ff4c4c;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            width: 100%;
            text-align: center;
            text-decoration: none;
        }
        .homepage-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #07a737;
        }
    </style>
</head>
<body>
   
    <div class="container">
        <h1>User Profile</h1>
        <p><strong>Username:</strong> <%= session.getAttribute("user") %></p>
        <p><strong>Email:</strong> <%= session.getAttribute("email") %></p>
        <p><strong>User Type:</strong> <%= session.getAttribute("userType") %></p>
        <p><strong>Phone:</strong> <%= session.getAttribute("phone") %></p>
        <a href="Logout" class="btn-logout">Logout</a>
        <a href="index.jsp" class="homepage-link">Go to Homepage</a>
        <a href="viewCookies.jsp" class="homepage-link">View Cookies</a>
        <p>Click here to delete all persistent cookies</p>
        <a href="delete_cookies.jsp" class="homepage-link">DELETE ALL COOKIES!</a>
    </div>
       
</body>
 
</html>


