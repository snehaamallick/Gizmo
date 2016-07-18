<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
  
  
   <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
  <style>
body {
    background-color: lightblue;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file='header.jsp'%>

 <h2>SIGN UP!</h2>

<c:url var="addAction" value="/register/add" ></c:url>
<form:form action="${addAction}" commandName="user" method="POST">
<table>
    <c:if test="${!empty name}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
    </tr>
   
    <tr>
        <td>
            <form:label path="email">
                <spring:message text="Email ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="email" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="contactno">
                <spring:message text="Contact no."/>
            </form:label>
        </td>
        <td>
            <form:input path="contactno" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="username">
                <spring:message text="User Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="username" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="password">
                <spring:message text="Password"/>
            </form:label>
        </td>
        <td>
            <form:input path="password" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <c:if test="${empty name}">
                <input type="submit"
                    value="<spring:message text="Add User"/>"/>
            </c:if>
        </td>
    </tr>
</table>  
</form:form>


<!-- 
<form>
<H1>Sign up!</font></H1><hr>
<style>
form{width:300px;}
input[type=text]{align:right;width:300px;}
</style>
<b>First Name:<input type="text"  required value="" /> <br> <br>Last Name:<input type="text"  required value=""/><br><br>

Contact Number:<input type="text"  required value="" /><br><br>
Address:<input type="text"  required value="" /><br><br>
    
Email id:
<input type="text" required value=""  ></b>
<br>
<br>
<font> Select your country:</font>
<select><br>
<option>India</option>
<option>Nepal</option>
<option>Afganishthan</option>
</select>
<input type="submit" value="Submit" />


</form>  -->

<nav class="navbar navbar-inverse navbar-fixed-bottom">
<div class="container-fluid"><center>
<font color="white">copyright <span class="glyphicon glyphicon-copyright-mark">SnehaMallick_2016</font></center>
</div>
  </div>
</body>
</html>