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

Amount&nbsp;&nbsp;  :&nbsp; &nbsp; <input type="text" placeholder="Enter Amount" id="amount"name="amount"/><br>
<input type="submit" value="Add" id="add" onclick="check();">


</fieldset>
<br>
<br>
</form>
</body>
</html>