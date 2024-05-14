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

body{
  background-image:url(img/updateData.png);
  -webkit-background-size: cover;
  background-size:cover;
  background-repeat:no-repeat;
  background-position:center center;
  height:100%;
  color: #fff;
  line-height: 1.8;
}

a{
  text-decoration: none;
}

#container{
  margin: 30px auto;
  max-width: 430px;
  padding: 20px;
}

.form-main{
  padding: 15px 25px;
  background-color: #fff; /*white*/
  color: #333;
  border-top: 4px solid #FFD700;
  border-radius: 05px;
}

.form-main h3{
  text-align: center;
}

.form-main .form-group{
  margin-top: 15px;
}

.form-main .form-group label{
  display: block;
  color: #666;
}

.form-main .form-group input{
  width: 80%;
  padding: 10px;
  border: #BDBDBB  1px solid;
  border-radius: 5px;
}

.form-main button{  
  margin-top: 20px;
  width: 100%;
  padding: 10px;
  background-color: #FFC300;
  color: #fff;
  cursor: pointer;
  border: 1px solid #FFC300;
  font-family:sen-serif;
  font-size: 15px;  
}

.form-main button:hover{
  background-color: #F5E431 ;
  transition: 1s;
}

.form-main .bottom-text{
  font-size: 13px;
  margin-top: 15px;
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
.btn.btn-submit:hover{
  background-color: rgb(174, 255,98) ;
  transition: 1s;
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

<%
  String id = request.getParameter("id");
  String ItemID = request.getParameter("ItemID");
  String customerID =request.getParameter("customerID");
  String category = request.getParameter("category");
  double ItemPrice = Double.parseDouble(request.getParameter("ItemPrice"));
  int quntity = Integer.parseInt(request.getParameter("quntity"));
  double TotalPrice = Double.parseDouble(request.getParameter("TotalPrice"));
  String currentDate = request.getParameter("currentDate");
%>
 	

<section>
      	<div id="container">
    		<div class="form-main">
                
                <form action="updateData" method="post">
                  <h3>Cart Details</h3>
                  <div class="form-group">
                  <label for="">Cart ID</label>
                  <input type="text" name="id" id=""  value="<%= id %>" Readonly/>
                  </div>
       
                  <div class="form-group">
                  <label for="">Item ID</label>
                  <input type="text" name="ItemID" id=""  value="<%= ItemID %>" readonly/>
                  </div>
                  
                  <div class="form-group">
                  <label for="">Item Category</label>
                  <input type="text" name="category" id=""  value="<%= category %>" readonly/>
                  </div>
                  
                  <div class="form-group">
                  <label for="">Item Price</label>
                  <input type="text" name="ItemPrice" id="ItemPrice"  value="<%= ItemPrice %>" readonly/>
                  </div>
                  
                  <div class="form-group">
                  <label for="">Quantity</label>
                  <input type="number" name="quntity"  min="1" max="100" id="quntity"  value="<%= quntity %>" />
                  </div>
                  <button type="button" id="addButton" class="btn btn-submit">Add</button>
                  
                  <div class="form-group">
                  <label for="">Total Price</label>
                  <input type="text" name="TotalPrice" id="TotalPrice"  value="<%= TotalPrice %>" readonly/>
                  </div>
                  
                  <div class="form-group">
                  <label for="">Current Date</label>
                  <input type="text" name="currentDate" id=""  value="<%= currentDate %>" />
                  </div>
                  <hr/>
                  <h3>Your Details</h3>
                  
                  <div class="form-group">
                  <label for="">Your ID</label>
                  <input type="text" name="customerID" id=""  value="<%= customerID %>" readonly/>
                  </div>
                  
                                  
                  <div class="popup">
                    <button id="updateButton" class="">UPDATE MY DATA</button>
                    <a href="product.jsp" class="">Home Page?</a>
                  </div>
                </form>
                
             </div>
         </div>
       
    </section>
    <script>
    var updateButton = document.getElementById("updateButton");

    updateButton.addEventListener("click", function() {
        // Display an alert message when the button is clicked
        alert("Your update was successfull!");
    });
    </script>
    
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
</body>
  <footer>
        <div class="container">
            <p>&copy; 2023 My Website. All rights reserved.</p>
        </div>
    </footer>

</html>