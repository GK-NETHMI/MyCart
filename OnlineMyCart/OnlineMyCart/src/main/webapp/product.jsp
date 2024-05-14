<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/stylesheader.css" type="text/css">
    <link rel="stylesheet" href="css/category.css" type="text/css">
    <title>InstantMarket Grocery</title>
    
    <style>
    .body{
    background-image:url(img/category.jpeg);
          
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
  <div class="body">
    <div class="container2">
        <h1>Grocery Shop</h1>
        <table class="cart">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th>Product Category</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Viana Hair Growth Shampoo</td>
                    <td>1890.00</td>
                    <td>Hair & Care</td>
                    <td><a href="insertData.jsp?productName=Viana Hair Growth Shampoo&productPrice=1890.00&productCategory=Hair and Care&productId=VianaSh01" class="add-to-cart-button">Add to Cart</a></td>

                </tr>
                <tr>
                    <td>Viana Hair Growth Conditioner</td>
                    <td>2980.00</td>
                    <td>Hair & Care</td>
                    <td><a href="insertData.jsp?productName=Viana Hair Growth Conditioner&productPrice=2980.00&productCategory=Hair and Care&productId=VianaCon01" class="add-to-cart-button">Add to Cart</a></td>

                </tr>
                <tr>
                    <td>HighLand Butter 100g</td>
                    <td>680.99</td>
                    <td>Dairy</td>
                    <td><a href="insertData.jsp?productName=HighLand Butter 100g&productPrice=680.99&productCategory=Dairy&productId=HighlandBU01" class="add-to-cart-button">Add to Cart</a></td>

                </tr>
                <tr>
                    <td>Bread</td>
                    <td>210.00</td>
                    <td>Bread & Bakery</td>
                    <td><a href="insertData.jsp?productName=Bread&productPrice=210.00&productCategory=Bread & Bakery&productId=BrSm01" class="add-to-cart-button">Add to Cart</a></td>

                </tr>
                <tr>
                    <td>Cetaphill Cleanser</td>
                    <td>2890.00</td>
                    <td>Cosmetics</td>
                    <td><a href="insertData.jsp?productName=Cetaphill Cleanser&productPrice=2890.00&productCategory=Cosmetics&productId=CetaphillCL01" class="add-to-cart-button">Add to Cart</a></td>

                </tr>
            </tbody>
        </table>
    </div>
  </div>
</body>
<footer>
    <div class="container1">
        <p>&copy; 2023 My Website. All rights reserved.</p>
    </div>
</footer>
</html>
