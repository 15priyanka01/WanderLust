<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>UserDashBoard</title>
</head>
<body>
<form action="/action_page.php">
<br><br><br><br><br><br><br><br><br>
 <nav class="navbar navbar-inverse"> 
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li ><a href="LoogedInFlightForm.jsp">Flight</a></li>
      
      
      <li><a href="LoggInHotelForm.jsp">Hotel</a>  </li>
        
     
      <li><a href="./UserPastFlight">Past Flight Bookings</a></li>
      <li><a href="#">Past Hotel Bookings</a></li>
      <li><a href="Wallet.jsp"> Wallet</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    
    <c:set var="userName" scope="session" value="${user.getUserName()}"/>

    	
      <li><a href="./UserProfile"><span class="glyphicon glyphicon-user"></span> Hi ${user.getUserName()} </a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout </a></li>
    </ul>
  </div>
  </nav>
 </form>


</body>
</html>