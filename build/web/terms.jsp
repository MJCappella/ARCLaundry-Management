<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="icon" href="images/logo.png" type="image/png">
        <link rel="stylesheet" href="style1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        
        <title>Terms & Conditions</title>

    </head>
   
<body>


<%@ include file = "header.html" %>




  <!-- homepage section starts here -->
        <section class="homepage-box">  
          <h1>ARC Laundry Terms and Conditions</h1> 
      
      </section>
  <!-- homepage section ends here -->



<!-- terms section starts here -->
<div class="terms">
  <heading-section class="heading">
    <h1>TERMS AND CONDITIONS OF USE</h1>
  </heading-section>

  
  <h1>Welcome to the ARC Laundry Website</h1>
    
   
  
  <p>These terms and conditions govern your use of the ARC Laundry website
   and any related services provided by ARC Laundry. By accessing or using the Website, you agree to be bound
    by these Terms.
  </p>

 

  
  <h1>License.</h1>
  
   <p>  
  Subject to your compliance with these Terms, ARC Laundry grants you a limited, non-exclusive, non-sublicensable,
   revocable, non-transferrable license to: <br>
   (i) Access and use the Service Platform on your personal device solely in connection with your use of 
   the Services. <br>
   (ii) Access and use any content, information and related materials that may be made available through the 
   Services, in each case solely for your personal, non-commercial use. Any rights not expressly granted
    herein are reserved by ARC Laundry.
   </p>
   
  
  <h1>Restrictions.</h1>
  
   
  <p>
    (i) The Website and its original content, features, and functionality are owned by ARC Laundry and are 
    protected by international copyright, trademark, patent, trade secret, and other intellectual property 
    or proprietary rights laws. <br>

    (ii) You may not modify, reproduce, distribute, create derivative works of, publicly display, publicly 
    perform, republish, download, store, or transmit any of the material on our Website, except as necessary 
    for your own personal, non-commercial use.
  </p>

  
 <h1> Text Messaging.</h1>
  
   
  <p> By creating an Account, you agree that the Services may send you text (SMS) messages as part of the 
    normal business operation of your use of the Services. You may opt-out of receiving text (SMS) messages 
    from ARC Laundry at any time. You acknowledge that opting out of receiving text (SMS) messages may 
    impact your use of the services.
  </p>
   
     
  
  <h1>Payment</h1>
  
   <p> 
    (i) Cancellations made within hours of the scheduled service may be subject to a cancellation fee. <br>

    (ii) Refunds will be issued in accordance with our refund policy, which may vary depending on the circumstances of the cancellation.
   </p>

   <h1>Contact Information</h1>

   <p>
    (i) If you have any questions about these Terms, please contact us at hello@arc.com <br>

     (ii) By using the ARC Laundry website, you signify your acceptance of these Terms and agree to comply with them. 
   </p>
   

</div>
<!-- terms section ends here -->

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

    /* terms section starts here */
    .terms{
        text-align: center;
        margin: auto;
        padding: 5rem 1rem;
        text-align: center;
        max-width: 1000px;
    }
    .terms h1{
        font-size: 1.5rem;
        text-decoration: underline;
    }
    .terms p{
        font-size: 1rem;
        line-height: 1.5;
    }
    /* terms section ends here */
  
    </style>
  
  
               <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
          <script src="main.js"></script>
      </body>
  </html>