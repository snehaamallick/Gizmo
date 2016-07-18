<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>

<html>
<head>
	<title>Home</title> 
	
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file='header.jsp'%>

<table class="table">
	<thead colspan="3">
	<th><h1>Details</h1></th>
	</thead>
	<tbody>
		<tr >
			<td rowspan="6"><img src="resources/images/${param.id}.jpg"></td>
			
		</tr>
		<tr>
		<td><h3>Features</h3></td>
		<td><h3>Details</h3></td>
		</tr>
		<tr>
		<td><b>Name</b></td>
		<td>${param.name}</td>
		</tr>
		<tr>
		<td><b>Category</b></td>
		<td>${param.cat}</td>
		</tr>
		<tr>
		<td><b>Price</b></td>
		<td>${param.price}</td>
		</tr>
		<tr>
		<td><b>Status</b></td>
		<td>${param.status}</td>
		</tr>
		<tr>
			<td colspan="3"><b>Product Description</b></td>
			<td>${param.desc}</td>
		</tr>
		<tr>
			<td>
				<a href = "checkout" class = "btn btn-primary" role = "button">Buy </a> 
            	<a href = "#" class = "btn btn-default" role = "button">Wishlist</a>
            	<a href="#myModal" role="button" data-toggle="modal" class = "btn btn-default">Share with a Friend</a>
            </td>
		</tr>
		<tr>
			
		</tr>
	</tbody>
	</table>



</body>
</html>