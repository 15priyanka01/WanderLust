<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--  <link rel="stylesheet" type="text/css" href="HotelForm.css">-->
<title>Search Hotel</title>
<script src=" http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script>
$(function() {
    $( "#datepicker" ).datepicker({ minDate: 0});
  });
  </script>
  <style>
  #submit{
	border-style: solid;
    border-width: 1px;
    border-color: black;
    background-color: black;
    color: white;
    padding:5px;
    font: bold;
    text-align:center; }
    
#form1{
	text-align:left;
	font-family:serif;
	font-weight: 400;

}
  </style>
</head>
<body>
<fieldset>
<form id="form1" action="./SearchHotelsByPlace" >

<p>
<b>Place</b>&nbsp; :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="places">
   <option value="New Delhi">New Delhi</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select></p>
<p><b>Check-In</b>&nbsp; :&nbsp;&nbsp; <input type="date" id="datepicker" min="2017-02-27"/></p>
<p><b>Check-Out</b> :&nbsp;<input type="date" id="datepicker" min="2017-02-28"/></p> 
<p><b>Room</b>&nbsp; :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" value="1" min="1"/></p>
<p><input type="submit" id="submit" value="Search"/></p>

</form>
</fieldset>
</body>
</html>