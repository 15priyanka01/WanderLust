<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="UserDashBoard.jsp"></jsp:include>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Money</title>
<script>
function check(){
	if(document.getElementById("amount").value<0)
	{
		alert('Add a positive value');
		document.getElementById("amount").innerHtml="";
	}
	if(document.getElementById("amount").value=="")
	{
		document.getElementById("amount").value=0;
	}
}
</script>
</head>
<body>
<form action="./MoneyAddded">
<c:if test="${not empty messageFlight}">
${messageFlight}   
</c:if><br>
<c:if test="${not empty messageHotel}">
${messageHotel}   
</c:if>
<br>
<fieldset>

Amount&nbsp;&nbsp;  :&nbsp; &nbsp; <input type="number" placeholder="Enter Amount" id="amount"name="amount" onblur="check();"/><br>
<input type="submit" value="Add" id="add" >


</fieldset>
<br>
<br>
</form>
</body>
</html>