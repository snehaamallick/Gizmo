<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 45%;
      margin: auto;
  }
  </style>
  
  <style>
body {
    background-color: lightblue;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initMap">
</script>

<script>
function initialize()
{
  var mapProp = {
    center: new google.maps.LatLng(51.508742,-0.120850),
    zoom:7,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

function loadScript()
{
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=BB:0D:AC:74:D3:21:E1:43:67:71:9B:62:91:AF:A1:66:6E:44:5D:75;com.xamarin.docs.android.mapsandlocationdemo3sensor=false&callback=initialize";
  document.body.appendChild(script);
}

window.onload = loadScript;
</script>
</head>
<body>




<nav class="navbar navbar-inverse">
	<div class="container-fluid">
 		<div class="navbar-header">
 		<a class="navbar-brand" href="gotoindex"><b>GizmoHub</b>
 		</a>
 		</div>
 	<ul class="nav navbar-nav">
    <li class="active">
    	<a href="https://www.youtube.com/"><b>Home</b></a>
    </li>
    
    
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="https://www.google.co.in/"> <b>Mobile Phones</b>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="https://www.google.co.in/">Android phone</a></li>
          
                  
                  
          <li><a href="https://www.google.co.in/">I-Phone</a></li>
          <li><a href="#">Windows Phone</a></li> 
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="https://www.google.co.in/"><b>Smart Devices</b>
      <span class="caret"></span></a>
      <ul class="dropdown-menu">
          <li><a href="https://www.google.co.in/">Smart Band</a></li>
          <li><a href="https://www.google.co.in/">Smart Watches</a></li>
         
        </ul></li> 
      
    
    
    
        
    
      <li><a href="aboutus"><b>About us</b></a></li> 
      <li><a href="Contact"><b>Contact us</b></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span><b>Sign Up</b></a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span><b>Login</b></a></li>
    </ul>
</div>
  </nav>
  
  <font size=+1><b>&nbsp;&nbsp;&nbsp;Contact us:</b></font>
  <p><b>&nbsp;&nbsp;&nbsp;&nbsp;GizmoHub Pvt. Ltd.<br>&nbsp;&nbsp;&nbsp;&nbsp;Ozone Manay Tech Park<br>
    		&nbsp;&nbsp;&nbsp;&nbsp;36,Saket Apartment,
    		<br>
    		&nbsp;&nbsp;&nbsp;&nbsp;Ahmednagar, 
    		<br>&nbsp;&nbsp;&nbsp;&nbsp;Maharashtra-400011.
   			 <br>
   			 <br>
     		<!-- <span class="glyphicon glyphicon-earphone"></span>-->    <font>&nbsp;&nbsp;&nbsp;&nbsp;<u>Customer care:</u></font><font>1800-999999</font>
     		<br><font>&nbsp;&nbsp;&nbsp;&nbsp;<u>Timings:</u>Mon-Sat 9AM TO 9PM
     		<br><hr>&nbsp;&nbsp;&nbsp; Our Profiles:</font>
     		
    		</b>	
    		
</p>

<p>
  <a href="https://www.facebook.com/"><img class="pull-left" src="resources/images/fa.png" width="30" height="30" hspace="20">
 </a> 

 
<a href="https://twitter.com/?lang=en"><img class="pull-left" src="resources/images/t.png" width="30" height="30" hscape="20">
</a>

<a href="https://www.pinterest.com/snapdeal/"><img class="pull-left" src="resources/images/pin.png" width="30" height="30" hspace="20">
 </a>
 <a href="https://www.instagram.com/"><img class="pull-left" src="resources/images/insta.png" width="30" height="30" hspace="20">
 </a>
 <a href="https://plus.google.com/collections/featured"><img class="pull-left" src="resources/images/google.png" width="30" height="30" hspace="20">
</a>
</p>


<div id="googleMap" style="width:500px;height:500px;"></div>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfQoa1RgI94G5vyDQ05jJj-RhQ8HxwQdU&callback=initMap">
    </script>

<nav class="navbar navbar-inverse navbar-fixed-bottom">
<div class="container-fluid"><center>
<font color="white">copyright <span class="glyphicon glyphicon-copyright-mark">SnehaMallick_2016</font></center></div>
  </div>

</body>
</html>