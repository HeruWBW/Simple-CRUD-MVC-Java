<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
* {box-sizing: border-box;}

html {
  font-family: Arial, Helvetica, sans-serif;
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
}

.show{
	 text-align: center;
	 border: 1;
	 width: 50%; 
	 height: 50%;
}

.header {
  padding: 60px;
  text-align: center;
  background: #1abc9c;
  color: white;
  font-size: 30px;
}

.section{
	padding: 250px;
    text-align: center;
	background-color: gray;
}
.btn-group a {
  background-color: #04AA6D; /* Green background */
  border: 1px solid green; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
  width: 30%;
}

.btn-group a:not(:last-child) {
  border-right: none; /* Prevent double borders */
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

/* Add a background color on hover */
.btn-group a:hover {
  background-color: #3e8e41;
}

.navbar {
  background-color: #333;
  overflow: hidden;
  display: inherit;
}

/* Style the links inside the navigation bar */
.navbar a {
  float: left;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.navbar a.active {
  background-color: #04AA6D;
  color: white;
}

 input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

/* Style the submit button */
input[type=submit] {
  width: 20%;
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* Add a background color to the submit button on mouse-over */
input[type=submit]:hover {
  background-color: #45a049;
}

.footer{
  padding: 5px;
  text-align: center;
  background: #1abc9c;
  color: green;
  font-size: 10px;
}
</style>
</head>

<body>
<section>
<div class="header">
	<h1>Welcome to ATS Indonesia</h1>
    </div>
    </section>
<section>
 <div class="navbar">
  <a href="#home">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>   
   </div>
</section>

<section>
 <div class="section">
 <div>
 <h1>WELCOME</h1>
 </div>
 <div class="btn-group">
 <form method="post" action="./formdata.jsp"><button class="btn btn-secondary btn-lg">Add New Records</button></form>
</div>

<div class="btn-group">
<form method="post" action="list"><button class="btn btn-secondary btn-lg">View All Records</button></form>
 </div>
 
 <div>
  <input type="submit" value="Download PDF" name="download" onclick="window.print()" />
  </div>	

  </div>
  </section>
  
 
<section>
 <div class="footer">
   <h1>Project java &copy;</h1>
  </div>
  </section>
  
</body>
</html>