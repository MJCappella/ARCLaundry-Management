<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="icon" href="images/logo.png" type="image/png">
        <link rel="stylesheet" href="style1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        
        <title>Duvets</title>

    </head>
   
<body>

<%@ include file = "header.html" %>




  <!-- homepage section starts here -->
        <section class="homepage-box">  
          <h1>View our prices for different duvet sizes below.</h1> 
      
      </section>
  <!-- homepage section ends here -->
  
  
<!-- container section starts here -->
  <section class="about-container">
    <div class="heading">
      <h1>DUVET CLEANING</h1>
    </div>
    
  <div class="container">
    <div class="card">
      <div class="card__header">
        <img src="images/duvet1.jpg" alt="card__image" class="card__image" width="600">
      </div>
      <div class="card__body">
          <h4>3*6</h4>
        <p>Ksh. 300</p>
        <a href="#cont" class="boxBtn">Book</a> 
          </div>
      <div class="card__footer">
        <div class="user">
                <div class="user__info">
            </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card__header">
        <img src="images/duvet3.jpg" alt="card__image" class="card__image" width="600">
      </div>
      <div class="card__body">
            <h4>4*6</h4>
        <p>Ksh. 400</p>
        <a href="#cont" class="boxBtn">Book</a> 
          </div>
      <div class="card__footer">
        <div class="user">
          <div class="user__info">
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card__header">
        <img src="images/duvet2.jpg" alt="card__image" class="card__image" width="600">
      </div>
      <div class="card__body">
             <h4>5*6, 6*6</h4>
        <p>Ksh. 600</p>
        <a href="#cont" class="boxBtn">Book</a> 
           </div>
      <div class="card__footer">
            </div>
        </div>
      </div>
    </div>
  </div>
  </section>
  <!-- container section ends here -->
  
  
<%@ include file = "footer.jsp" %>

<style>
  /* intro section starts here */
 .homepage-box {
    position: relative;
    justify-content: center;
    min-height: 100vh;
    color: #fff;
    text-align: center;
    background:url(images/duvet1.jpg);
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


  /* container section starts here */
      .about-container{
      margin: auto;
      padding: 5rem 1rem;
      text-align: center;
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
  
  .card__body {
    padding: 1rem;
    display: flex;
    flex-direction: column;
    gap: .5rem;
  }
  
  .card__body h4 {
    font-size: 1.5rem;
    text-transform: capitalize;
  }
  
  .card__footer {
    display: flex;
    padding: 1rem;
    margin-top: auto;
  }
  
  .user {
    display: flex;
    gap: .5rem;
  }
  
  .user__image {
    border-radius: 50%;
  }
  
  .user__info > small {
    color: #666;
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
  /* container section ends here */
</style>


             <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
        <script src="main.js"></script>
    </body>
</html>