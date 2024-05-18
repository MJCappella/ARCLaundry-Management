<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
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
            margin-bottom: 5rem;
        }
        form input{
            border: 1px solid #717171;
            border-radius: 4px;
            display: block;
            font-size: 15px;
            padding: 9px;
            width: 100%;
        }
        label, input, select {
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
        input[type="submit"]:hover {
            background-color: #555;
        }
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
          
<script language="JavaScript">
function validate(form) {
    var username = form.username.value;
    var password = form.password.value;
    var confirmPassword = form.confirmPassword.value;
    var email = form.email.value;
    var userType = form.userType.value;
    var phone = form.phone.value;

    // Validate username
    if (form.username.value === "" || !username.match(/^[a-zA-Z]{3,}$/)) {
        alert("Please enter a valid username. It should be at least 3 characters long and contain only letters.");
        form.username.focus();
        return false;
    }

    // Validate password
    if (!form.password.value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/)) {
        alert("Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be between 8 and 16 characters long.");
        form.password.focus();
        return false;
    }

    // Validate confirm password
    if (form.password.value !== form.confirmPassword) {
        alert("Passwords do not match.");
        form.confirmpassword.focus();
        return false;
    }

    // Validate email (basic format validation)
    if (form.email.value === "" || !form.email.value.match(/^\S+@\S+\.\S+$/)) {
        alert("Please enter a valid email address.");
        form.email.focus();
        return false;
    }

    // Validate user type
    if (form.userType.value === "") {
        alert("Please select a user type.");
        form.usertype.focus();
        return false;
    }

    // Validate phone number
    if (form.phone.value === "") {
        alert("Please enter your phone number.");
        form.phone.focus();
        return false;
    } else if (!form.phone.value.match(/^\d{10}$/)) {
        alert("Please enter a valid 10-digit phone number.");
        form.phone.focus();
        return false;
    }

    return true; // Form is valid
}
</script>



    <form action="Registration" method="post">
        <h2>User Registration</h2>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        
         <label for="password">confirm Password:</label>
        <input type="password" id="password" name="confirmPassword" required 

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="usertype">User Type:</label>
        <select id="usertype" name="userType">
            <option value="student">Student</option>
            <option value="staff">Staff</option>
        </select>

        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" pattern="[0-9]{10}" title="Please enter a 10-digit phone number" required>
        <input type="submit" value="Register" class="button" onclick="validate(this.form)">
         <p>Already have an account? <a href="Login.jsp">Login</a></p>
    </form>
    
<%@ include file = "footer.jsp" %>
</body>
</html>
