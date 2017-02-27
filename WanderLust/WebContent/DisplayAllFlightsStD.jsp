<%@page import="java.util.ArrayList"%>
<%@page import="com.mmt.model.bean.Flight"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Flights</title>

</head>
<body>
<body>
<% ArrayList<Flight> flightList=(ArrayList<Flight>)session.getAttribute("arrayListFlight");
%>
<table border="1"  border-collapse= "collapse">
	<tr>
	<th>Flight Id</th>
	<th>Airline</th>
	<th>Depart</th>
	<th>Arrive</th>
	<th>Price</th>
	<th></th>
	</tr>
<%for(Flight flight:flightList){ %>
			<tr>
			<td><%out.print(flight.getFlightId()); %></td>
			<td><%out.print(flight.getFlightCompanyName()); %></td>
			<td><%out.print(flight.getFlightDepartureTime()); %></td>
			<td><%out.print(flight.getFlightArrivalTime()); %></td>
			<td><%out.print(flight.getFlightTicketPrice()); %></td>
			</tr>
		
	<% } %>


</body>
</html>