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
    <div class="panel-heading">Details of booked hotels</div>
    <div class="panel-body">
        
    </div>

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>hotelBookingId</th>
                    <th>hotelId</th>
                    <th>roomNo</th>
                    <th>hotelCheckInDate</th>
                    <th>hotelCheckOutDate</th>
                    <th>stayDuration</th>
                   
                </tr>
            </thead>
            <c:forEach items="${bookedHotelList}" var="list">
            <tbody>
                <tr>
                
                    <td><c:out value="${ list.getHotelBookingId()}" /></td>
                    <td><c:out value="${ list.getHotelId()}" /></td>
                    <td><c:out value="${ list.getRoomNo()}" /></td>
                     <td><c:out value="${ list.getHotelCheckInDate()}" /></td>
                      <td><c:out value="${ list.getHotelCheckOutDate()}" /></td>
                       <td><c:out value="${ list.getStayDuration()}" /></td>
                 
                </tr>
            </tbody>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>