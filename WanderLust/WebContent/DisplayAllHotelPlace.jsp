<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.mmt.model.bean.Hotel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Hotels</title>
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
<% ArrayList<Hotel> hotelList=(ArrayList<Hotel>)session.getAttribute("arrayListHotel");
%>

<%--
<%for(Hotel hotel:hotelList){ %>
			
			<%out.print(hotel.getHotelId()); %><br>
			<%out.print(hotel.getHotelName()); %><br>
			<%out.print(hotel.getHotelInfo()); %><br><br>
		
	<% } %>
 --%>



<c:forEach var="hotel" items="${hotelList}">
     <c:out value="${hotel.getHotelId()}" />
      <c:out value="${hotel.getHotelName()}" />
       <c:out value="${hotel.getHotelInfo()}" />
    </c:forEach>

<a href="BlackHeader.jsp">Home Page</a>
</body>
</html>