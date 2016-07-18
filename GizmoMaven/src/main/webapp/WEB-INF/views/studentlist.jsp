<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>

<html>
<head>
	<title>Home</title> 
	
	<meta name="viewport" content="width=device-width, initial-scale=1">

	
	
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

<!--  ========= Table to populate data ======= -->
<center>
<div class="container">
	<table>
		<table id="myTable" class="table table-striped" >  
        <thead>  
          <tr>  
            <th>Serial No</th>  
            <th>Name</th>  
            <th>Category</th> 
            <th>Price</th>
            <th>Status</th> 
            <th>Description</th> 
          </tr>  
        </thead> 
        <tbody>
        <c:forEach items="${listfromtable}" var="element">
        	<tr>
        		<td>${element.id}</td>

				<td>${element.name}</td>

        		<td>${element.category}</td>

        		<td>${element.price}</td>

        		<td>${element.status}</td>
        		
        		<td>${element.description}</td>
        		<td><a href="showdetails?id=${element.id}&name=${element.name}&price=${element.price}&desc=${element.description}&cat=${element.category}&status=${element.status}">Details</a></td>
        	</tr>
        	</c:forEach>
        </tbody> 
	</table>
</div>
</center>



</body>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
</html>
