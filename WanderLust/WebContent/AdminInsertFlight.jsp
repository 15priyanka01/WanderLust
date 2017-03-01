<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="AdminDashBoard.jsp"></jsp:include>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="./AdminFlight">
<c:set var="option" scope="session" value="${option}"/>
<fieldset>
<legend>Fill Flight Details</legend>
<input type="text" name="flightId" placeholder="Enter flightId" required/><br>
<input type="text" name="flightCompanyName" placeholder="Enter flightCompanyName" required/><br>
<input type="text" name="flightSource" placeholder="Enter flightSource" required/><br>
<input type="text" name="flightDestination" placeholder="Enter flightDestination" required/><br>
<input type="text" name="flightDepartureTime" placeholder="Enter flightDepartureTime" required/><br>
<input type="text" name="flightArrivalTime" placeholder="Enter flightArrivalTime" required/><br>
<input type="text" name="flightTicketPrice" placeholder="Enter flightTicketPrice" required/><br>
<input type="number" name="availableSeats" placeholder="Enter Total Seats" required/><br>
<input type="submit" value="Insert"/>
</fieldset>
</form>
</body>
</html>