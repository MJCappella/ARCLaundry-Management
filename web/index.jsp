<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="icon" href="images/logo.png" type="image/png">
        <link rel="stylesheet" href="style1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        
        <title>ARC Homepage</title>

    </head>
   
<body>
          
<!-- header section ends here -->
<%@include file = "header.html" %>

<section class="homepage-box"> 
    <%
        String username = (String) session.getAttribute("user");
        if (username != null) {
    %>
    <h1>
        WELCOME <%= username %>
    </h1>
    <% } %>
    <h1>Reliable, Affordable & Professional</h1> 
    <h2>Laundry and dry cleaning services</h2>
    <a href="#about" class="boxBtn">View our services</a>   
</section>

<!--   homepage section starts here 
    <section class="homepage-box"> 
        <h1>
       WELCOME 
       <h1>
        <h1>Reliable ,  Affordable & Professional</h1> 
        <h2>Laundry and dry cleaning services</h2>
        <a href="#about" class="boxBtn">View our services</a>   
    </section>-->
  <!-- homepage section ends here -->

 
<!-- about & container section starts here -->
<div class="about" id="about"></div>
<section class="about-container">
  <div class="heading">
    <h1>1. Laundromat</h1>
  </div>
    <p class="section-subheader">
    Get your Laundry load done and returned on the same day at Ksh. 100 per KG for assorted clothes, Ksh. 150 per KG for curtains/sheers and Ksh. 500 per suit.
    Our machine wash cleaning is done by a professionally trained team to ensure your clothing is gently cleaned, taken care of in the best way possible, and that any stains are properly removed by using the proper methods. <br>
    Duration: Same-day delivery <br>
    Ironing: Ksh. 100 per item (*Optional)
    Select service then press Book to schedule a pick-up.
  </p>

<div class="container">
  <div class="card">
    <div class="card_header">
      <img src="images/basket1.jpg" alt="card_image" class="card_image" width="600">
    </div>
    <div class="card_body">
        <h4>Laundry Pile</h4>
      <p>Ksh. 100 per kg</p>
      <a href="contact_details.jsp" class="boxBtn">Book</a> 
        </div>
    <div class="card_footer">
      <div class="user">
              <div class="user_info">
          </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card_header">
      <img src="images/curtains.png" alt="card_image" class="card_image" width="600">
    </div>
    <div class="card_body">
          <h4>Curtains/Sheers</h4>
      <p>Ksh. 150 per kg</p>
      <a href="contact_details.jsp" class="boxBtn">Book</a> 
        </div>
    <div class="card_footer">
      <div class="user">
        <div class="user_info">
        </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card_header">
      <img src="images/suit.jpg" alt="card_image" class="card_image" width="600">
    </div>
    <div class="card_body">
           <h4>Suits</h4>
      <p>Ksh. 500 per set</p>
      <a href="contact_details.jsp" class="boxBtn">Book</a> 
         </div>
    <div class="card_footer">
          </div>
      </div>
    </div>
  </div>
</div>
</section>
<!-- about & container section ends here -->


<!-- duvet section starts here -->
<heading-section class="heading">
  <h1>2. Duvet Cleaning</h1>
</heading-section>
     
     <section class="duvet-box"> 
      <div class="icon-section">
        <img src="images/laundromat-icon.webp" alt="">
      </div> 
      <h1>We are your top duvet cleaning partner.</h1> 
      <a href="contact_details.jsp" class="boxBtn">Book</a>   
  </section>
<!-- duvet section ends here -->


<!-- carpet section starts here -->
<heading-section class="heading">
  <h1>3. Carpets/Mats</h1>
</heading-section>

  <section class="carpet-box">  
    <div class="icon-section">
      <img src="images/carpet-icon.webp" alt="">
    </div> 
    <h1>We clean your Carpet / Mat to perfection.</h1> 
    <a href="contact_details.jsp" class="boxBtn">Book</a>     
</section>
<!-- carpet section ends here -->



<!-- shoes section starts here -->
<heading-section class="heading">
  <h1>4. Shoe Cleaning</h1>
</heading-section>

  <section class="shoe-box">  
    <div class="icon-section">
      <img src="images/shoe-icon.png" alt="">
    </div> 
    <h1>Get your shoes done and returned on the same day at Ksh 100 per pair.</h1> 
    <a href="contact_details.jsp" class="boxBtn">Book</a>   
</section>
<!-- shoes section ends here -->


<!-- opening hours section starts here -->
<heading-section class="heading">
  <h1>Opening hours</h1>
</heading-section>

  <section class="hours-box">  
      <h5>Open Daily <br>Monday - Sunday <br>9:00 am to 6:00 pm</h5>
    </section>
<!-- opening hours section ends here -->


   
<%@ include file = "footer.jsp" %>

<style>
/* homepage section starts here */
  .homepage-box {
	position: relative;
	justify-content: center;
	min-height: 100vh;
	color: #fff;
	text-align: center;
  background:url(images/banner1.jpg);
  background-position: center;
  background-size: cover;
  padding-top: 1rem;
  font-family: 'Montserrat', sans-serif;
  }

.homepage-box h1 {
  font-family: 'Montserrat', sans-serif;
	margin-bottom: 15px;
	font-size: 70px;
	text-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
  color: #3f3e3e;
  line-height: 1.5;
}
.homepage-box h2 {
  font-family: 'Montserrat', sans-serif;
	margin-bottom: 15px;
	font-size: 23px;
	text-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
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
		font-size: 35px;
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
  .homepage-box {
  padding-top: 1rem;
}
}
.about{
  padding-top: 3rem;
}
/* homepage section ends here */

/* about & container section starts here */
      .about-container{
        margin: auto;
        padding: 5rem 1rem;
        text-align: center;
        max-width: 1200px;
        font-family: 'Montserrat', sans-serif;
        }
      .about-container .heading{
        font-size: 1.6rem;
        text-transform: uppercase;
      }
      .about-container p{
        line-height: 1.5;
      }
      @media (width < 600px) {
         .about-container {
          margin-bottom: .5rem;
        }
      
        }
    
    .container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      max-width: 1200px;
      margin-block: 2rem;
      gap: 2rem;
     }
    
    img {
      max-width: 100%;
      max-height: 15rem;
      display: block;
      object-fit: cover;
    }
    
    .card {
      display: flex;
      flex-direction: column;
      width: clamp(20rem, calc(20rem + 2vw), 22rem);
      overflow: hidden;
      box-shadow: 0 .1rem 1rem rgba(0, 0, 0, 0.1);
      border-radius: 1em;
      background: #ECE9E6;
    background: linear-gradient(to right, #FFFFFF, #ECE9E6);
    
    }
           
    .card_body {
      padding: 1rem;
      display: flex;
      flex-direction: column;
      gap: .5rem;
    }
    
    .card_body h4 {
      font-size: 1.5rem;
      text-transform: capitalize;
    }
    
    .card_footer {
      display: flex;
      padding: 1rem;
      margin-top: auto;
    }
    
    .container a.boxBtn {
      padding: 5px 5px 5px 5px;
      background: #fff;
      border-radius: 5%;
      color: #07a737;
      border: 4px solid #07a737;
      transition: all .5s;
      text-decoration: none;
    }
    .container a.boxBtn:hover {
      background: #fff;
      color: #000;
    }
/* about & container section ends here */
 
 
 /* duvet section starts here */
 .duvet-box {
position: relative;
justify-content: center;
min-height: 50vh;
color: #fff;
text-align: center;
background:url(images/duvet.jpg);
background-position: center;
background-size: cover;
margin-bottom: 3rem;
font-family: 'Montserrat', sans-serif;
}

.duvet-box h1 {
margin-bottom: 15px;
font-size: 60px;
text-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
color: #3a3737;
line-height: 1.5;
font-family: 'Montserrat', sans-serif;
}

.duvet-box a.boxBtn {
padding: 15px 35px;
background: #fff;
border-radius: 50px;
color: #07a737;
border: 4px solid #07a737;
transition: all .5s;
text-decoration: none;
}
.duvet-box a.boxBtn:hover {
background: #fff;
color: #000;
}
@media (max-width: 800px) {
.duvet-box {
min-height: 600px;
}
.duvet-box h1 {
font-size: 32px;
}
.duvet-box h3 {
font-size: 20px;
}
.duvet-box a.boxBtn {
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
 /* duvet section ends here */


 /* carpet section starts here */
 .carpet-box {
position: relative;
justify-content: center;
min-height: 50vh;
color: #fff;
text-align: center;
background:url(images/carpet6.jpg);
background-position: center;
background-size: cover;
margin-bottom: 3rem;
font-family: 'Montserrat', sans-serif;
}

.carpet-box h1 {
margin-bottom: 15px;
font-size: 60px;
text-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
color: #3a3737;
line-height: 1.5;
}

.carpet-box a.boxBtn {
padding: 15px 35px;
background: #fff;
border-radius: 50px;
color: #07a737;
border: 4px solid #07a737;
transition: all .5s;
text-decoration: none;
}
.carpet-box a.boxBtn:hover {
background: #fff;
color: #000;
}
@media (max-width: 800px) {
.carpet-box {
min-height: 600px;
}
.carpet-box h1 {
font-size: 32px;
}
.carpet-box h3 {
font-size: 20px;
}
.carpet-box a.boxBtn {
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
 /* carpet section ends here */


 /* shoes section starts here */
 .shoe-box {
position: relative;
justify-content: center;
min-height: 50vh;
color: #fff;
text-align: center;
background:radial-gradient(rgba(48, 46, 45, 0.896),
                    rgba(30, 240, 124, 0.75)),url(images/shoes.jpg);
background-position: center;
background-size: cover;
margin-bottom: 3rem;
font-family: 'Montserrat', sans-serif;
}

.shoe-box h1 {
margin-bottom: 15px;
font-size: 48px;
text-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
color: #d8d5d5;
line-height: 1.5;
}

.shoe-box a.boxBtn {
padding: 15px 35px;
background: #fff;
border-radius: 50px;
color: #07a737;
border: 4px solid #07a737;
transition: all .5s;
text-decoration: none;
}
.shoe-box a.boxBtn:hover {
background: #fff;
color: #000;
}
@media (max-width: 800px) {
.shoe-box {
min-height: 600px;
}
.shoe-box h1 {
font-size: 32px;
}
.shoe-box h3 {
font-size: 20px;
}
.shoe-box a.boxBtn {
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
.shoe-box {
min-height: 10vh;
}
}
/* shoes section ends here */


/* opening hours section starts here */
.hours-box {
position: relative;
justify-content: center;
min-height: 50vh;
color: #fff;
text-align: center;
background:url(images/background.png);
background-position: center;
background-size: cover;
font-family: 'Montserrat', sans-serif;
}

.hours-box h5 {
margin-bottom: 15px;
font-size: 35px;
text-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
color: #3f3e3e;
line-height: 1.5;
}

@media (max-width: 800px) {
.hours-box {
min-height: 600px;
}
.hours-box a.boxBtn {
padding: 15px 40px;
}
}
.hours-box a.boxBtn {
	padding: 15px 35px;
	background: #fff;
	border-radius: 50px;
	color: #07a737;
	border: 4px solid #07a737;
	transition: all .5s;
  text-decoration: none;
}
.hours-box a.boxBtn:hover {
	background: #fff;
	color: #000;
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
.hours-box {
min-height: 10vh;
}
}
/* opening hours section ends here */
</style>

</body>
</html>

