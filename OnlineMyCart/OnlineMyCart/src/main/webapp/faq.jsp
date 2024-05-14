<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/stylesheader.css" type="text/css">
<title>FAQ</title>

<style>

.background-img{
    width: 100%;
    height:350px;
    padding-top:10px;
    background-image: url(img/faq.jpg);
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
   }
   .b-text1{
    text-align: center;
    font-style: groove;
    color: rgb(255, 255, 255);
    padding-top: 130px;
   }
.background{
    background-color: rgb(255, 255, 255);
}

.faq-heading{
    font-size: 150%;
    text-align: center;
    margin-top: 50px;
    margin-bottom: 50px;
    padding: 20px 60px;
}
.faq-container{
    display: flex;
    justify-content: center;
    flex-direction: column;
    margin-bottom: 100px;

}
.hr-line{
  width: 60%;
  margin: auto;
  
}

.faq-page {
    background-color: #f5f5f5;
    color: #444;
    cursor: pointer;
    padding: 30px 20px;
    width: 65%;
    border: none;
    outline: none;
    border-bottom:3px solid rgb(255, 255, 255);
    transition: 0.3s ease;
    margin: auto;

}
.faq-body{
    margin:auto;
    height:100px;
    width: 60%; 
    padding:auto;
    }

.active,
.faq-page:hover {
    background-color: #d1ffd7;
}

.faq-body {
    padding: 0 160px;
    margin-top: 10px;
    display: none;
    overflow: hidden;
    height:180px;
}
.faq-body1 {
    padding: 0 160px;
    margin-top: 10px;
    display: none;
    overflow: hidden;
    height:280px;
}

.faq-page:after {
    content: '\276F';
    font-size: 13px;
    color: #3f3f3f;
    float: right;
    margin-right: 90px;
}

.active:after {
    content: "\276E";
   
}
</style>
</head>
<header>
    <div class="container1">
        <h1>InstantMarket</h1>
        <nav>
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="#">Feedback</a></li>
                <li><a href="faq.jsp">FAQ</a></li>
                <li><a href="product.jsp">Our Products</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </nav>
        <div class="search-bar">
            <form action="log" method="post">
                <input type="text" name="ProductName" placeholder="Search...">
                <input type="submit" name="submit" value="Search">
            </form>
        </div>
        
    </div>
</header>
<body>

<section class="background">
            <div class="background-img">
                <h1 class="b-text1">Find frequently asked questions and helpful answers</h1>
            </div>

            <main>

                <h1 class="faq-heading">FAQ'S</h1>
                
                <section class="faq-container">
                    <div class="faq-item">

                        <!-- faq question -->
                        <h1 class="faq-page">How do I get Registered to the InstantMarket website </h1>

                        <!-- faq answer -->
                        <div class="faq-body">
                            <br>Start by clicking on Sign up on the top right corner of your screen
                               <br>Enter your Email and your Phone Number
                               <br>Create a password and REGISTER! 
                        </div>
                    
                    <hr class="hr-line">

                    <div class="faq-two">

                        <!-- faq question -->
                        <h1 class="faq-page">What is the minimum Order value?</h1>

                        <!-- faq answer -->

                        <div class="faq-body">
                            <p>There is no minimum order value</p>
                        </div>
                    </div>
                    <hr class="hr-line">


                    <div class="faq-three">

                        <!-- faq question -->
                        <h1 class="faq-page">Have a delivery option ?</h1>

                        <!-- faq answer -->
                        <div class="faq-body">
                            <p>No delivery method. Only we have pickUp method.</p>
                        </div>
                    </div>
                    <hr class="hr-line">

                    <div class="faq-four">

                        <!-- faq question -->
                        <h1 class="faq-page">How can I order?</h1>

                        <!-- faq answer -->
                        <div class="faq-body1">
                            <p>To finish, just log in to the InstantMarket Online eCommerce Store, add items to your cart, and proceed to the checkout.
                             Initially, as mentioned in the previous point 1.1, you need to use your login credentials to access our eCommerce store. 
                             Next, just add items to your cart. If you want to find relevant products quickly, use the search icon and input various search parameters, like product name and product category. 

                             Don't forget to check out our special online promotions, too. Third, confirm the order and the delivery address, then follow the instructions to complete the checkout process by selecting any of the accepted payment options. 

                             Following order processing, you will receive a confirmation notification with the final invoice attached.
                          </p>
                        </div>
                    </div>
                    <hr class="hr-line">

                    <div class="faq-five">

                        <!-- faq question -->
                        <h1 class="faq-page">What are the payment methods? </h1>

                        <!-- faq answer -->
                        <div class="faq-body">
                            <p>Cash and Card payments only</p>
                        </div>
                    </div>
                    <hr class="hr-line">

                    <div class="faq-six">

                        <!-- faq question -->
                        <h1 class="faq-page">How do I cancel my order?</h1>

                        <!-- faq answer -->
                        <div class="faq-body">
                            <p>You can simply cancel your order by getting in touch with our Customer care team on e-mail
                             (customercare@instantmarket.lk) or call us on 0115 128 128 (8am to 8pm in all 7 days). T&C Apply*</p>
                        </div>
                    </div>
                    <hr class="hr-line">

                    <div class="faq-seven">

                        <!-- faq question -->
                        <h1 class="faq-page">What if some of the items in my order are not available?</h1>

                        <!-- faq answer -->
                        <div class="faq-body">
                            <p>In stock out situations, you will receive a final bill at the delivery with the actual amount charged from you. We now charge your VISA & MASTER Credit/Debit Card ONLY for the items we deliver. Hence, in a
                             rare situation where the product is not available, you will ONLY get charged for the products you receive.</p>
                        </div>
                    </div>
                    <hr class="hr-line">

                    <div class="faq-eight">

                        <!-- faq question -->
                        <h1 class="faq-page">How do I get in touch with customer service?</h1>

                        <!-- faq answer -->
                        <div class="faq-body">
                            <p>Please call our customer service contact number 0117 129 129 or send an email to "customerservice@instantmarket.lk"</p>
                        </div>
                    </div>
                    
                    </div>

 <script>
 var faq = document.getElementsByClassName("faq-page");
 var i;

 for (i = 0; i < faq.length; i++) {
     faq[i].addEventListener("click", function () {
         /* Toggle between adding and removing the "active" class,
         to highlight the button that controls the panel */
         this.classList.toggle("active");

         /* Toggle between hiding and showing the active panel */
         var body = this.nextElementSibling;
         if (body.style.display === "block") {
             body.style.display = "none";
         } else {
             body.style.display = "block";
         }
     });
 }
  </script>

                </section>
            </main>
        </section>
        
        

</body>
<footer>
    <div class="container1">
        <p>&copy; 2023 My Website. All rights reserved.</p>
    </div>
</footer>
</html>