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
<%for(Flight flight:flightList){ %>
			
			<%out.print(flight.getFlightId()); %>&nbsp;&nbsp;
			<%out.print(flight.getFlightCompanyName()); %>&nbsp;&nbsp;
			<%out.print(flight.getFlightSource()); %>&nbsp;&nbsp;
			<%out.print(flight.getFlightDestination()); %>&nbsp;&nbsp;
			<%out.print(flight.getFlightDepartureTime()); %>&nbsp;&nbsp;
			<%out.print(flight.getFlightArrivalTime()); %>&nbsp;&nbsp;
			<%out.print(flight.getFlightTicketPrice()); %><br><br>
			
		
	<% } %>


</body>
</html>