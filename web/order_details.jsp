<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <link rel="stylesheet" href="style1.css">
    <link rel="icon" href="images/logo.png" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</head>
<body>
    
<%@ include file = "header.html" %>
<!-- header section ends here -->


<script language="JavaScript">
function validate(form)
{
    if (form.pickUp.value==="") 
    {
        alert("Enter the day you want us to pick your item");
        form.pickUp.focus();
    }
    else if (form.time.value==="")
    {
        alert("Please enter the Pickup time");
        form.time.focus();
    }
    else
    {
        form.submit();
    }
}
</script>






<%@ page import="business.User"%>


<div class="formdetails">
        <h1>Please Enter your Order Details Below</h1>
<form action="OrderDetailsServlet" method="post">
            <table cellspacing="5" border="0">
    <tr>
      <td align="right">Pickup Date:</td>
      <td><input type="date" id="datemin" name="pickUp" min="2000-01-02"  style="padding: 8px; width: 250px;" "></td>
    </tr>
    <tr>
      <td align="right">Pickup Time:</td>
      <td><input type="time"  name="time" style="padding: 8px; width: 250px;" "></td>
    </tr>
    <tr>
      <td></td>
      <td><br><input type="button" value="Submit" onClick="validate(this.form)" class="button"></td>
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
</body>
</html>
