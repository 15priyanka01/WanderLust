<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="UserDashBoard.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="./HotelBooking">
		
			Hotel Name:&nbsp; :&nbsp;${hotelName}<br>
		<br> Room No: &nbsp; :&nbsp;${hotelRoomNo}<br>
		<br> Location:&nbsp; :&nbsp;${place}<br>
		<br> CheckIn Date: &nbsp; :&nbsp;${from}<br>
		<br> CheckOut Date: &nbsp; :&nbsp;${to}<br>
		<br> Amount to be paid: &nbsp; :&nbsp;${finalValuetobepaid}<br>
		<br> <input type="submit" value="Confirm Hotel Booking">

	</form>
</body>
</html>