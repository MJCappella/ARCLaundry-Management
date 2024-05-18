<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="icon" href="images/logo.png" type="image/png">
        <link rel="stylesheet" href="style1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        
        <title>Areas covered</title>

    </head>
   
<body>


<!-- header section starts here -->
<%@ include file = "header.html" %>




  <!-- homepage section starts here -->
        <section class="homepage-box">  
          <h1>Areas covered by ARC Laundry</h1> 
      
      </section>
  <!-- homepage section ends here -->




<!-- areas section starts here -->
  <div class="areas" id="areas">
    <heading-section class="heading">
        <h1>Areas covered</h1>
      </heading-section>
<h2>> All lecturers and workers residences within Egerton University.</h2>
      <h2>
       > Student Hostels
    </h2>
        <p>1. Maringo Hostels</p>
        <p>2. CBD Hostels</p>
    <ul class="a">
        <li>Mau, Naivasha, Arbedares, Amboseli, Baringo</li>
    </ul>
    <p>3. Uganda</p>
    <p>4. Taifa</p>
    <p>5. Mamangina</p>
    <p>6. Old Hall</p>
    <p>7. Riverside</p>
    <p>8. Buruburu Hostels</p>
    <ul class="a">
        <li>Garissa, Kisii, Kericho, Kilifi, Wajir</li>
    </ul>
    <p>9. Tatton Hostels</p>
</div>
  <!-- areas section ends here -->


    
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
  
 /* areas section starts here */
 .areas{
            text-align: center;
            padding-top: 4rem;
            padding-bottom: 4rem;
        }
        ul.a {
            list-style: square inside;
        }
        .areas p{
            font-weight: 600;
            font-size: 1.2rem;
        }
 /* areas section ends here */
    </style>
  
  
               <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
          <script src="main.js"></script>
      </body>
  </html>