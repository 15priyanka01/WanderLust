<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>No Flights Found</title>
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
<% String msg=(String)session.getAttribute("message"); %>
<h1 style="color: red"><% out.print(msg); %></h1><br><br>
<a href="BlackHeader.jsp">Home Page</a>
</body>
</html>