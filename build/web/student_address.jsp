<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Address</title>
    <link rel="stylesheet" href="style1.css">
    <link rel="icon" href="images/logo.png" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</head>
<body>
    

<%@ include file = "header.html" %>   
      </div>
    </div>
    </div>
</form>
<!-- header section ends here -->


<script language="JavaScript">
function validate(form) {
    if (!validateName(form.blockName.value)) {
        alert("Please select a Block.");
        form.blockName.focus();
    } else if (!validateName(form.hostelName.value)) {
        alert("Please select a Hostel.");
        form.hostelName.focus();
    } else if (form.roomNumber.value === "") {
        alert("Please enter your Room Number");
        form.roomNumber.focus();
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
</script>






<%--<%@ page import="business.User"%>--%>
<%--
    // get attributes from the request
    User user = (User) request.getAttribute("user");
    String message = (String) request.getAttribute("message");

    // handle null values
    if (user == null) user = new User();
    if (message == null) message = "";
--%>

<div class="formdetails">
        <h1>Please Enter your Address Details Below</h1>
<form action="Address" method="post">
            <table cellspacing="5" border="0">
    <tr>
      <td align="right">Block Name:</td>
      <td><select name="blockName" style="padding: 8px; width: 250px;" required>
              <option> </option>
              <option value="Riverview">Riverview</option>
              <!--<option value="Old Hall">Old Hall</option>-->
              <option value="Mamangina">Mamangina</option>
              <option value="Taifa">Taifa</option>
              <option value="Tatton">Tatton</option>
      </select>
          </td>
    </tr>
          <td align="right">Hostel Name</td>
          <td><select name="hostelName" style="padding: 8px; width: 250px;" required>
                  <option> </option>
              <option value="Maringo">Maringo</option>
              <option value="Buruburu">Buruburu</option>
              <option value="CBD">CBD</option>
              <option value="Ruwenzori">Ruwenzori</option>
              <option value="Taifa">Taifa</option>
              <option value="Uganda">Uganda</option>
              <option value="Tatton">Tatton</option>
      </select>
          </td>
    <tr>
      <td align="right">Room Number:</td>
      <td><input type="text" name="roomNumber" placeholder="e.g. nandi/21 or if Tatton, 32/3" style="padding: 8px; width: 250px;" required></td>
    </tr>
    <tr>
    </tr>
    <tr>
      <td></td>
      <td><br><input type="submit" value="Submit" onclick=validate(this.form) style="padding: 10px 20px; background-color: #07a737; color: white; border: none; border-radius: 4px; cursor: pointer;"></td>
    </tr>
    </table>
 </form>
</div>

     
<%@ include file = "footer.jsp" %>

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
 </style>

</body>
</html>
