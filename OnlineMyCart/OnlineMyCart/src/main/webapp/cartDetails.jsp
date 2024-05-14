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

*{
 margin:0;
 padding: 0;
 outline: 0;
}

table{
 position: absolute;
 border-collapse: collapse;
 border-radius: 11px 11px 11px 11px;
 left: 50%;
 top: 50%;
 bottom:50%;
 width: 50%; 
 transform: translate(-50%,-50%);
  box-shadow: 0 2px 15px rgba(64,64,64,.7);
  overflow: hidden;

}

td{
 padding: 15px 20px;

}

tr{
 width: 100%;
 background-color: #F0F8FF;
}
.btn{
 display: inline-block;
 padding:8px;
 background-color:#333;
 text-decoration:none;
 border-radius:5px;
 color:#ffff;
 transition:0.5s;
 align-items: flex-end;
}
.btn:hover{
  background-color:#0FB80A;
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

<div class="container2">

 	</div>
    <table class="">
    <tr>
    <td></td>
    <td><h2>Your Cart uploaded successfully!</h2></td>
    </tr>

	<c:forEach var="cart" items="${cartDetails}">
	
	<c:set var="id" value="${cart.id}"/>
	<c:set var="ItemID" value="${cart.itemID}"/>
	<c:set var="customerID" value="${cart.customerID}"/>
	<c:set var="category" value="${cart.category}"/>
	<c:set var="ItemPrice" value="${cart.itemPrice}"/>
	<c:set var="quntity" value="${cart.quntity}"/>
	<c:set var="TotalPrice" value="${cart.totalPrice}"/>
	<c:set var="currentDate" value="${cart.currentDate}"/>
	
	<tr>
		<td>Item ID</td>
		<td>${cart.itemID}</td>
	</tr>
	
	<tr>
		<td>Customer ID</td>
		<td>${cart.customerID}</td>
	</tr>
	
	<tr>
		<td>Item Category</td>
		<td>${cart.category}</td>
	</tr>
	
	<tr>
		<td>Item Price</td>
		<td>${cart.itemPrice}</td>
	</tr>
	
	<tr>
		<td>Quantity</td>
		<td>${cart.quntity}</td>
	</tr>
	
	<tr>
		<td>Total Price</td>
		<td>${cart.totalPrice}</td>
	</tr>
	
	<tr>
		<td>Current Date</td>
		<td>${cart.currentDate}</td>
	</tr>
	
	
	</c:forEach>
	
	<c:url value="updateData.jsp" var="updateData">
		<c:param name="id" value="${id}"/>
		<c:param name="ItemID" value="${ItemID}"/>
		<c:param name="customerID" value="${customerID}"/>
		<c:param name="category" value="${category}"/>
		<c:param name="ItemPrice" value="${ItemPrice}"/>
		<c:param name="quntity" value="${quntity}"/>
		<c:param name="TotalPrice" value="${TotalPrice}"/>
		<c:param name="currentDate" value="${currentDate}"/>
	</c:url>	
	
	<tr>
	 	<td></td>
	 	<td>
	
	<a href="${updateData}" class="btn">
	UPDATE 
	</a>
	
	<c:url value="deleteData.jsp" var="deleteData">
		<c:param name="id" value="${id}"/>
		<c:param name="ItemID" value="${ItemID}"/>
		<c:param name="customerID" value="${customerID}"/>
		<c:param name="category" value="${category}"/>
		<c:param name="ItemPrice" value="${ItemPrice}"/>
		<c:param name="quntity" value="${quntity}"/>
		<c:param name="TotalPrice" value="${TotalPrice}"/>
		<c:param name="currentDate" value="${currentDate}"/>
	</c:url>
	
	<a href="${deleteData}" class="btn">
	DELETE
	</a>
	<c:url value="payment.jsp" var="addPaymentLink">
    <c:param name="TotalPrice" value="${cartDetailsTotalPrice}" />
    </c:url>
    <a href="${addPaymentLink}" class="btn">
    ADD PAYMENT
    </a>
	</td>
	</tr>
	</table>
</body>
  <footer>
        <div class="container">
            <p>&copy; 2023 My Website. All rights reserved.</p>
        </div>
    </footer>

</html>