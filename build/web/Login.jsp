<!DOCTYPE html>
<html>
    <head>
    <title>Login</title>
    <link rel="stylesheet" href="style1.css">
    <link rel="icon" href="images/logo.png" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Montserrat', sans-serif;
            background: url(images/background.png);
            background-size: cover;
            background-position: center;
        }
        form {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #000000;
            border-radius: 5px;
            margin-top: 7rem;
            margin-bottom: 3rem;
            font-family: 'Montserrat', sans-serif;
        }
        form input{
            border: 1px solid #717171;
            border-radius: 4px;
            display: block;
            font-size: 15px;
            padding: 9px;
            width: 100%;
        }
        label, input {
            display: block;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .remember-me {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 10px; /* Adjust as needed */
        }

/*        .remember-me label {
        margin-left: 5px;  Adjust as needed 
        }
        input[type="submit"]:hover {
            background-color: #555;
        }*/
        form .button{
            border: none;
            outline: none;
            background: #07a737;
            color: #000000;
            font-size: 1rem;
            font-weight: 600;
            padding: 10px 18px;
            border-radius: 3px;
            cursor: pointer;
            transition: 0.15s ease;
            font-family: 'Montserrat', sans-serif;
        }
        
    </style>
</head>
<body>


  <!-- header section starts here -->
<%@ include file = "header.html" %>

<script language = "JavaScript">
function validate(form) {
    if (form.username.value === "") {
        alert("Please enter your username");
        form.username.focus();
        return false;
    } 
    else if (form.password.value === "") {
        alert("Please enter your password");
        form.password.focus();
        return false;
    }
    return true;
}   
</script>
         
<!-- header section ends here -->

<form action="Login" method="post" onsubmit="return validate(this)">
    <h2>User Login</h2>
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>

    <input type="checkbox" id="rememberMe" name="rememberMe"> <!-- Remember me checkbox -->
    <label for="rememberMe">Remember me</label>

    <input type="submit" value="Login" class="button">
    <p>Don't have an account? <a href="Registration.jsp">Register</a></p>
</form>

<%@ include file = "footer.jsp" %>

</body>
</html>


