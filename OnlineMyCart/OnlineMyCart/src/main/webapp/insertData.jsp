<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/stylesheader.css" type="text/css">
<title>InstantMarket Grocery</title>
<style type="text/css">
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

#container{
   padding: 20px;
  margin: 30px auto;
  max-width: 390px;
}

a{
  text-decoration: none;
}

body{
  background-image:url(img/insertData.jpg);
  -webkit-background-size: cover;
  background-size:cover;
  background-repeat:no-repeat; 
  background-position: center  ;
  height:100%;
  color: #fff;
  line-height: 1.8;
}

.form-wrap{
  background-color: #fff;
  border-top: 5px solid #FFC300;
  border-radius: 8px;
  padding: 10px 25px;
  color: #333;
  }

.form-wrap .form-group{
  margin-top: 15px;
}

.form-wrap .form-group input{
  padding: 11px;
  width: 96%;
  border: #BDBDBB  1px solid;
  border-radius: 5px;
}

.form-wrap button{
  background-color: #FFC300;
   width: 100%;
  border-radius: 5px;
  padding: 10px;
  margin-top: 16px;
  color: #fff;
  cursor: pointer;
  border: 1px solid #FFC300;
  font-size: 16px;
  font-family:sen-serif;
  transition: 0.5s;
}

.form-wrap button:hover{
  background-color: #F5E431 ;
  transition: 1s;
}

.form-wrap .bottom-text{
  font-size: 13px;
  margin-top: 20px;
}
.btn.btn-submit {
  background-color: #218838; 
  color: #fff; /* White text color */
  border: none; /* Remove button border */
  border-radius: 5px;
  padding: 10px 2px; 
  width: 25%;
  cursor: pointer; 
 }
.btn.btn-submit:hover {
    background-color: #90EE90;
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
                <li><a href="#">Payment</a></li>
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
	
	<div class="img"></div>

	<section>
		
	
		<div id="container">
    		<div class="form-wrap">
				 <form action="insertData" method="post">
                  <h3>Cart Details</h3>
                 
                 <div class="form-group">                 
                   <input type="text" name="customerID" id="customerID" placeholder="Customer ID (e.g., ABC12 or abcDE)" pattern="[A-Za-z0-9]{5}" title="CustomerID should be 5 characters with letters and numbers." />
                  </div>
                  <div class="form-group">
                 <input type="text" name="ItemID" id="ItemID" placeholder="Item ID" value="<%= request.getParameter("productId") %>" />
                  </div>                 
                  <div class="form-group">
                  <input type="text" name="category" id="category" placeholder="Item Category" value="<%= request.getParameter("productCategory") %>" />
                  </div>
                  <div class="form-group">
                  <input type="text" name="ItemPrice" id="ItemPrice" placeholder="Item Price" value="<%= request.getParameter("productPrice") %>" />
                  </div>
                  <div class="form-group">
                  <input type="number" min="1" max="100" name="quntity" id="quntity" placeholder="Quantity" />
                  </div>
                  <button type="button" id="addButton" class="btn btn-submit">Add</button>
                  
                  <div class="form-group">
                  <input type="text" name="TotalPrice" id="TotalPrice" placeholder="Total Price" readonly/>
                  </div>
                  
                  <div class="form-group">
                         <label for="currentDate">Current Date:</label>
                         <input type="text" id="currentDate" name="currentDate" readonly>
                   </div>
                         <script>

                         const currentDate = new Date();

                        // Format the date as "YYYY-MM-DD" (you can use other formats as needed)
                        const formattedDate = currentDate.toISOString().slice(0, 10);

                        // Set the formatted date as the value of the input field
                        document.getElementById("currentDate").value = formattedDate;
                        </script>
                                     
                  <br>
                  <hr/>
                                                     
                  <div class="">
                    <button class="">ADD MY CART</button>
                    <a href="product.jsp" class="">Go to back ?</a>
                  </div>
                </form>
                
              </div>
          </div>
        
    </section>
<script>
// Get references to the quantity and item price input fields
const quantityInput = document.getElementById("quntity");
const itemPriceInput = document.getElementById("ItemPrice");
const totalPriceInput = document.getElementById("TotalPrice");

// Add an event listener to the "Add" button
document.getElementById("addButton").addEventListener("click", function () {
    // Parse quantity and item price as numbers
    const quantity = parseFloat(quantityInput.value);
    const itemPrice = parseFloat(itemPriceInput.value);

     if ( quantity < 1  ) {
    
        alert("Quantity must be at least 1. It should not be zero or negative value");

        // Clear the input fields and return
        quantityInput.value = '';
        totalPriceInput.value = '';
        return;
    }

    const totalPrice = quantity * itemPrice;

    // Update the "Total Price" input field
    if (!isNaN(totalPrice)) {
        totalPriceInput.value = totalPrice.toFixed(2); // Display with 2 decimal places
    } else {
        totalPriceInput.value = ''; // Clear the field if input is not a number
    }
});
</script> 

<script>
  const customerIDInput = document.getElementById("customerID");

  customerIDInput.addEventListener("mouseover", function () { //when  mousepointer come in form display this hint
    customerIDInput.setCustomValidity(
      "Customer ID should be 5 characters with letters and numbers (e.g., ABC12)."
    );
  });

  customerIDInput.addEventListener("mouseout", function () {
    customerIDInput.setCustomValidity(""); // Clear the custom message
  });
</script>    
</body>
  <footer>
        <div class="container">
            <p>&copy; 2023 My Website. All rights reserved.</p>
        </div>
    </footer>

</html>