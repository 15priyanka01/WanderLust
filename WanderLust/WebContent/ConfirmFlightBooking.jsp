<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="./ConfirmBooking" >
Source:&nbsp; :&nbsp;${source}<br><br>
 Destination:&nbsp; :&nbsp;${destination}<br><br>
 Flight Company: &nbsp; :&nbsp;${flightCompanyName}<br><br>
 Date of Flight: &nbsp; :&nbsp;${departureDate}<br><br>
 Departure Time: &nbsp; :&nbsp;${departureTime}<br><br>
 Arrival Time: &nbsp; :&nbsp;${arrivalTime}<br><br>
 Amount to be paid: &nbsp; :&nbsp;${finalValuetobepaid}<br><br>
 
<input type="submit" value="Confirm Flight Booking"></button>

</form>


 
</body>
</html>