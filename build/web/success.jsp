<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
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
   
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
        font-family: 'Montserrat', sans-serif;
        padding-bottom: 4rem;
      }
        .card h1 {
          color: #07a737;
          font-weight: 900;
          font-size: 30px;
          margin-bottom: 10px;
        }
        .card p {
          color: #404F5E;
          font-size:20px;
          margin: 0;
        }
      .card i {
        color: #07a737;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
        margin-bottom: 3rem;
      }
      .button{
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
            text-decoration: none;
            margin-top: 2rem;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .button-section{
            padding-top: 2rem;
        }
      
    </style>
   
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #cccec9; margin:0 auto;">
          <i class="checkmark"><img src="images/check-mark.png" alt="checkmark"></i>
      </div>
        <h1>Success</h1> 
        <p>You have successfully finished your booking<br/> We'll be in touch shortly!</p>
        <div class="button-section">
        <a href="index.jsp" class="button">Back to homepage</a> 
        </div>
      </div>

<%@ include file = "footer.jsp" %>
    </body>
</html>