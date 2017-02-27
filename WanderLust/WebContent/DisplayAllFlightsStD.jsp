<%@page import="java.util.ArrayList"%>
<%@page import="com.mmt.model.bean.Flight"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Flights</title>
<style>
 
  a{
	border-style: solid;
    border-width: 1px;
    border-color: black;
    background-color: black;
    color: white;
    padding:5px;
    font: bold;
    text-align:center; 
    }
    
</style>
</head>
<body>
<body>
<% ArrayList<Flight> flightList=(ArrayList<Flight>)session.getAttribute("arrayListFlight");
%>
<%for(Flight flight:flightList){ %>
			
			<%out.print(flight.getFlightId()); %><br>
			<%out.print(flight.getFlightCompanyName()); %><br>
			<%out.print(flight.getFlightSource()); %><br>
			<%out.print(flight.getFlightDestination()); %><br>
			<%out.print(flight.getFlightDepartureTime()); %><br>
			<%out.print(flight.getFlightArrivalTime()); %><br>
			<%out.print(flight.getFlightTicketPrice()); %><br><br>
			
		
	<% } %>

<a href="BlackHeader.jsp">Home Page</a>
</body>
</html>