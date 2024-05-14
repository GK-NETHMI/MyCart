<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/stylesheader.css" type="text/css">
<title>InstantMarket Grocery</title>
<style type="text/css">
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;/* Background color for the entire page */
}


.popup {
  text-align: center;
  background-color: #fff;
  padding: 50px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  border-radius: 8px;
}
.popup img{
width:100px;
margin-top:-120px;
border-radius:80%;
box-shadow:0 2px 10px rgba(0,0,0,0.2);
}
.popup h2 {
  color: #333; 
}

.popup form {
  margin-top: 13px;
}

.popup input[type="text"],
.popup button {
  padding: 5px 10px;
  margin: 5px;
  background-color: #007BFF; /* Button background color */
  color: #fff; /* Button text color */
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* Apply styles to the "NO" button */
.popup a button {
  background-color: #CD5C5C; 
}


.popup a button:hover {
  color: #fff;
  background-color: #FF4500; 
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

<div class="container">

	<%
		String id = request.getParameter("id");
		String customerID = request.getParameter("customerID");
		
	%>

	<div class="popup">
	<img src="img/deleteData.jpg">
	<h2>Are you sure!</h2>
	<form action="deleteData" method="post">
	<h3>Cart ID <input type="text" name="id"  value="<%= id %>" Readonly/></h3>
	<p> Do you really want to remove your cart?</p>
	
	<button class="">YES</button>
	
	</form>
	<a href="product.jsp" class=""><button class="">NO</button></a>
	
	
	</div>
</div> 
</body>  
</html>