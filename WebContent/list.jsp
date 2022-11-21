<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
  width: 50%;
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
  width: 10%;
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
  font-size: 5px;
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
  <a href="index.jsp">Home</a>  
   </div>
</section>

<section>
 <div class="section">

<h2 align="center"><font><strong>Master Data</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Date</th>
						<th>City</th>
						<th>Status</th>
						<th>operation</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="task" items="${listTask}">

						<tr>
							<td><c:out value="${task.id}" /></td>
							<td><c:out value="${task.name}" /></td>
							<td><c:out value="${task.date}" /></td>
							<td><c:out value="${task.city}" /></td>
							<td><a href="view?id=<c:out value='${task.id}' />">view</a>
							<td><a href="edit?id=<c:out value='${task.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${task.id}' />">Delete</a></td>
								
						</tr>
					</c:forEach>
		
				</tbody>
			</table>
			</section>

<section>
 <div class="footer">
   <h2>Project java &copy;</h2>
  </div>
  </section>
  
</body>
</html>