


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
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd      
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 
	today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("departureDate").setAttribute("min", today);
	
  });
  function check(){
	  var source=document.getElementById("source").value;
	  var destination=document.getElementById("destination").value;
	  if(source==destination){
		  alert("Source and Destination cannot be same");
		  document.getElementById("source").value=" ";
		  document.getElementById("destination").value=" ";
	  }
  }
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
<form action="./SearchFlightBySnD">
<p>
<b>Source</b>&nbsp; :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select id="source" name="source" required="required">
	
   <option value="New Delhi">New Delhi(Delhi,India)</option>
    <option value="mumbai">mumbai</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
<b>Destination:</b>&nbsp;&nbsp;
<select id="destination" name="destination" required="required">
		<option value="Mumbai">Mumbai(Maharashtra,India)</option>
   <option value="New Delhi">New Delhi(Delhi,India)</option>
     <option value="Bangalore">Bangalore</option>
    <option value="chennai">chennai</option>
    <option value="Goa">Goa</option>
</select>


<p>
<b>Depature-Date:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
<input id="departureDate" name="departureDate" type="date" placeholder="dd/mm/yyyy" min="" required/></p>

<p>
                      <b>Number of Seats :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input type="number" name="seats" value="1" min="1"/>
  </p>                    
   <p>    <input type="submit" value="Search" id="submit" onclick="check()"/></p>               
                       
                    
</form>
</body>
</html>