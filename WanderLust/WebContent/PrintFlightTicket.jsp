<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="UserDashBoard.jsp"></jsp:include>

	
<div class="panel panel-default">
    <div class="panel-heading">Details of booked ticket</div>
    <div class="panel-body">
        
    </div>

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>flightCompanyName</th>
                    <th>flightSource</th>
                    <th>flightDestination</th>
                    <th>flightDepartureTime</th>
                    <th>flightArrivalTime</th>
                    <th>flightTicketPrice</th>
                   
                </tr>
            </thead>
         
            <tbody>
                <tr>
                
                    <td><c:out value="${ viewedFlightDetails.getFlightCompanyName()}" /></td>
                    <td><c:out value="${ viewedFlightDetails.getFlightSource()}" /></td>
                    <td><c:out value="${ viewedFlightDetails.getFlightDestination()}" /></td>
                     <td><c:out value="${ viewedFlightDetails.getFlightDepartureTime()}" /></td>
                      <td><c:out value="${ viewedFlightDetails.getFlightArrivalTime()}" /></td>
                       <td><c:out value="${ viewedFlightDetails.getFlightTicketPrice()}" /></td>
                 
                </tr>
            </tbody>
           
        </table>
    </div>
</div>
</body>
</html>