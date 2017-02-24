<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Hotel</title>
<link rel="stylesheet" type="text/css" href="HotelForm.css">
<script src=" http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script>

  $( function() {
	  $( "#datepicker" ).datepicker();
  } );
  </script>
</head>
<body>
<fieldset>
<form action="./SearchHotelsByPlace" >
<p>
<b>Place</b>&nbsp; :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="places">
   <option value="New Delhi">New Delhi</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select></p>
<c:set var="now" value="<%=new Date()%>" />


<p><b>Check-In</b>&nbsp; :&nbsp;&nbsp; <input type="date" id="datepicker" value="mm-dd-yyyy" min="2018-02-24"></p>
<p><b>Check-Out</b> : <input type="date" id="datepicker"  value="mm-dd-yyyy" min="2018-02-25"></p>
<p><b>Room</b>&nbsp; :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" value="1" min="1"/></p>
<p><input type="submit" id="submit"  value="Search"/></p>
</form>
</fieldset>
</body>
</html>