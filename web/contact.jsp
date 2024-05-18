<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="icon" href="images/logo.png" type="image/png">
        <link rel="stylesheet" href="style1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        
        <title>Contact us</title>

    </head>
   
<body>


<%@ include file = "header.html" %>

<script language="JavaScript">
function validate(form) {
    // Validate first name
    if (!validateName(form.firstName.value)) {
        alert("Enter a valid first name. It should be at least 3 characters long and contain only letters.");
        form.firstName.focus();
        return false;
    }

    // Validate last name
    if (!validateName(form.lastName.value)) {
        alert("Enter a valid last name. It should be at least 3 characters long and contain only letters.");
        form.lastName.focus();
        return false;
    }

    // Validate email
    if (form.emailAddress.value.trim() === "" || !form.emailAddress.value.match(/^\S+@\S+\.\S+$/)) {
        alert("Please enter a valid email address.");
        form.emailAddress.focus();
        return false;
    }

    // Validate phone number
    if (form.phone.value.trim() === "" || !form.phone.value.match(/^\d{10}$/)) {
        alert("Please enter a valid 10-digit phone number.");
        form.phone.focus();
        return false;
    }

    // Validate message
    if (form.message.value.trim() === "") {
        alert("Please enter your message.");
        form.message.focus();
        return false;
    }

    return true; // Form is valid
}

function validateName(name) {
    var nameRegex = /^[a-zA-Z]{3,}$/; // Regular expression for matching the criteria
    return nameRegex.test(name);
}
</script>



  <!-- intro section starts here -->
        <section class="homepage-box">  
          <h1>Feel free to reach out using the info below.</h1> 
        </section>
    <!-- intro section ends here -->
  
    

    <!-- contact section starts here -->
 
      <div class = "contact-body">
        <div class = "contact-info">
          <div>
            <span><i class = "fas fa-mobile-alt"></i></span>
            <span>Phone No.</span>
            <span class = "text">+254123456789</span>
          </div>
          <div>
            <span><i class = "fas fa-envelope-open"></i></span>
            <span>E-mail</span>
            <span class = "text">hello@arc.com</span>
          </div>
          <div>
            <span><i class = "fas fa-map-marker-alt"></i></span>
            <span>Address</span>
            <span class = "text">Egerton university, Njoro</span>
          </div>
          <div>
            <span><i class = "fas fa-clock"></i></span>
            <span>Opening Hours</span>
            <span class = "text">Monday - Sunday (9:00 AM to 6:00 PM)</span>
          </div>
        </div>

        <div class = "contact-form">
          <form action="contactus" method="post">
            <div>
                <input name="firstName" type = "text" class = "form-control" placeholder="First Name" required>
              <input name="lastName" type = "text" class = "form-control" placeholder="Last Name" required>
            </div>
            <div>
                <input name="emailAddress" type = "email" class = "form-control" placeholder="E-mail" required>
                <input name="phone" type = "text" class = "form-control" placeholder="Phone" required>
            </div>
            <textarea rows = "5" placeholder="Message" class = "form-control" required></textarea>
            <input name="message" type = "submit" class = "send-btn" value = "send message" onclick="validate(this.form)">
          </form>
          <div>

            <img src = "images/contact-bg.webp" alt = "" class="contact-img">
          </div>
        </div>
      </div>
      <!-- contact section ends here -->


    
<%@ include file = "footer.jsp" %>


<style>
 /* intro section starts here */
 .homepage-box {
    position: relative;
    justify-content: center;
    min-height: 100vh;
    color: #fff;
    text-align: center;
    background:url(images/banner1.jpg);
    background-position: center;
    background-size: cover;
    padding-top: 13rem;
  }
  .homepage-box video {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -1;
  }
  .homepage-box h1 {
    margin-bottom: 15px;
    font-size: 65px;
    text-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
    font-family: 'Montserrat', sans-serif;
    color: #3f3e3e;
    line-height: 1.5;
  }
  
  .homepage-box a.boxBtn {
    padding: 15px 35px;
    background: #fff;
    border-radius: 50px;
    color: #07a737;
    border: 4px solid #07a737;
    transition: all .5s;
    text-decoration: none;
  }
  .homepage-box a.boxBtn:hover {
    background: #fff;
    color: #000;
  }
  @media (max-width: 800px) {
    .homepage-box {
      min-height: 600px;
    }
    .homepage-box h1 {
      font-size: 32px;
    }
    .homepage-box h3 {
      font-size: 20px;
    }
    .homepage-box a.boxBtn {
      padding: 15px 40px;
    }
  }
  section {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 110px 100px;
  }
  @media (max-width: 1000px) {
    section {
      padding: 100px 50px;
    }
  }
  @media (max-width: 600px) {
    section {
      padding: 125px 30px;
    }
  }
  /* intro section ends here */


  /* contact section starts here */
  .contact-body{
            max-width: 1320px;
            margin: 0 auto;
            padding: 0 1rem;
            font-family: "Quicksand", sans-serif;
        }
        .contact-info{
            margin: 2rem 0;
            text-align: center;
            padding: 2rem 0;
        }
        .contact-info span{
            display: block;
        }
        .contact-info div{
            margin: 0.8rem 0;
            padding: 1rem;
        }
        .contact-info span .fas{
            font-size: 2rem;
            padding-bottom: 0.9rem;
            color: #07a737;
        }
        .contact-info div span:nth-child(2){
            font-weight: 500;
            font-size: 1.1rem;
        }
        .contact-info .text{
            padding-top: 0.4rem;
            font-family: "Quicksand", sans-serif;
        }
        .contact-form{
            padding: 2rem 0;
            border-top: 1px solid #363636;
        }
        .contact-form form{
            padding-bottom: 1rem;
        }
        .contact-img{
          height: 20rem;
          width: 25rem;
        }
        .form-control{
            width: 100%;
            border: 1.5px solid #242323;
            border-radius: 5px;
            padding: 0.7rem;
            margin: 0.6rem 0;
            font-size: 1rem;
            outline: 0;
            font-family: "Quicksand", sans-serif;
        }
        .form-control:focus{
            box-shadow: 0 0 6px -3px rgba(48, 48, 48, 1);
        }
        .contact-form form div{
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            column-gap: 0.6rem;
        }
        .send-btn{
            font-size: 1rem;
            text-transform: uppercase;
            color: #fff;
            background:#07a737;
            border: none;
            border-radius: 5px;
            padding: 0.7rem 1.5rem;
            cursor: pointer;
            transition: all 0.4s ease;
            font-family: "Quicksand", sans-serif;
        }
        .send-btn:hover{
            opacity: 0.8;
        }
        .contact-form > div img{
            width: 85%;
        }
        .contact-form > div{
            margin: 0 auto;
            text-align: center;
        }
        
        @media screen and (min-width: 768px){
            .contact-info{
                display: grid;
                grid-template-columns: repeat(2, 1fr);
            }
        }
        
        @media screen and (min-width: 992px){
            .contact-form{
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                align-items: center;
            }
        }
        
        @media screen and (min-width: 1200px){
            .contact-info{
                grid-template-columns: repeat(4, 1fr);
            }
        }
        
  /* contact section ends here */
</style>


        <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
        <script src="main.js"></script>
    </body>
</html>