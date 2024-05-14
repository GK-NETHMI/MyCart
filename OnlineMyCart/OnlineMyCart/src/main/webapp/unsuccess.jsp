<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/stylesheader.css" type="text/css">
<title>InstantMarket Grocery</title>
</head>
<header>
    <div class="container1">
        <h1>InstantMarket</h1>
        <nav>
            <ul>
                <li><a href="homePage.jsp">Home</a></li>
                <li><a href="#">Feedback</a></li>
                <li><a href="#">Cart</a></li>
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
<h1>unsuccess</h1>

</body>
  <footer>
        <div class="container">
            <p>&copy; 2023 My Website. All rights reserved.</p>
        </div>
    </footer>

</html>