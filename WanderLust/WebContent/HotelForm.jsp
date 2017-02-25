<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Hotels</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 <script>
$(document).ready(function() {
    /*$( "#from" ).datepicker({
      changeMonth: true,  
      changeYear:true,      
      minDate:0,
      onSelect: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({      
      changeMonth: true,   
      changeYear:true,
      minDate:0,
      onSelect: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });*/
    
   $("#to").blur(function(){
	var checkin = new Date($("#from").val());
	var checkout =new Date($("#to").val());

	    if(checkin >= checkout){
	   		alert("Check-Out should be greater than Check-In date");
	   		
	   		$("#to").val(" ");
	    }
	    
	    });
	
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
<form id="form1" action="./SearchHotelsByPlace" >
<fieldset>


<p>
<b>Place</b>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id="places">
   <option value="New Delhi">New Delhi</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select></p>

<p><b>Check-In</b>&nbsp; &nbsp;&nbsp; <input type="date" id="from" placeholder="dd-mm-yyyy" min="2017-02-27" required/></p>
<p><b>Check-Out</b> &nbsp;<input type="date" id="to" placeholder="dd-mm-yyyy" min="2017-02-28" required/></p> 
<p><b>Room</b>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" value="1" min="1"/></p>
<p><input type="submit" id="submit" value="Search"/></p>


</fieldset>
</form>
</body>
</html>