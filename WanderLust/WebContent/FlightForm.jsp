


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
<title>Search Flights</title>
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
<form>
<p>
<b>Source</b>&nbsp; :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select id="source">
	<option value=""></option>
   <option value="New Delhi">New Delhi(Delhi,India)</option>
    <option value="Mumbai">Mumbai(Maharashtra,India)</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
<b>Destination:</b>&nbsp;&nbsp;
<select id="destination">
	<option value=""></option>
   <option value="New Delhi">New Delhi(Delhi,India)</option>
    <option value="Mumbai">Mumbai(Maharashtra,India)</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select>


<p>
<b>Depature-Date:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <input id="datetimepicker" type="date" placeholder="mm/dd/yyyy" min="2017-02-27"/></p>

<p>
                      <b>Number of Seats :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input type="number" value="1" min="1"/>
  </p>                    
   <p>    <input type="submit" value="Search" id="submit"/></p>               
                       
                    
</form>
</body>
</html>