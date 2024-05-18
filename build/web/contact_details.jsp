<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contact Details</title>
    <link rel="stylesheet" href="style1.css">
    <link rel="icon" href="images/logo.png" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    </head>
<%@ include file = "header.html" %>

<script language="JavaScript">
function validate(form) {
    if (!validateName(form.firstName.value)) {
        alert("Enter a valid first name. It should be at least 3 characters long and contain only letters.");
        form.firstName.focus();
    } else if (!validateName(form.lastName.value)) {
        alert("Enter a valid last name. It should be at least 3 characters long and contain only letters.");
        form.lastName.focus();
    } else if (form.phoneNumber.value === "") {
        alert("Please enter your phone number");
        form.phoneNumber.focus();
    } else if (!validatePhoneNumber(form.phoneNumber.value)) {
        alert("Please enter a valid phone number. The number must be 10 digits long and start with a zero.");
        form.phoneNumber.focus();
    }
    else
    {
        form.submit();
    }
}
function validateName(name) {
    var nameRegex = /^[a-zA-Z]{3,}$/; // Regular expression for matching the criteria
    return nameRegex.test(name);
}

function validatePhoneNumber(phoneNumber) {
    var phoneRegex = /^0\d{9}$/; // Regular expression for matching the criteria
    return phoneRegex.test(phoneNumber);
}
</script>

<div class="formdetails">
    <h1>Please Enter your Contact Details Below</h1>
    <form action="customerInfoServlet" method="post">
        <table cellspacing="5" border="0">
            <tr>
                <td align="right">First Name:</td>
                <td><input type="text" name="firstName" style="padding: 8px; width: 250px;"></td>
            </tr>
            <tr>
                <td align="right">Last Name:</td>
                <td><input type="text" name="lastName" style="padding: 8px; width: 250px;"></td>
            </tr>
            <tr>
                <td align="right">Phone number</td>
                <td><input type="text" name="phoneNumber" style="padding: 8px; width: 250px;"></td>
            </tr>
            <tr>
                <td></td>
                <td><br><input type="submit" value="Submit" style="padding: 10px 20px; background-color: #07a737; color: white; border: none; border-radius: 4px; cursor: pointer;"></td>
            </tr>
        </table>
    </form>
</div>

 <style>
 
  body {
      margin: 0;
      padding: 0;
      font-family: 'Montserrat', sans-serif;
      background: url(images/background.png);
            background-size: cover;
            background-position: center;
  }
  .formdetails{
    margin-top: 7rem;
    margin-bottom: 3rem;
  }
  .formdetails h1{
    text-align: center;
    font-size: 1.5rem;
    padding-bottom: 2rem;
  }
  form {
      max-width: 400px;
      margin: auto;
      padding: 20px;
      border: 1px solid #000000;
      border-radius: 5px;
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

 
<%@ include file = "footer.jsp" %>
