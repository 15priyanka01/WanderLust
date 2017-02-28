<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form>
Source:&nbsp; :&nbsp;${source}
 Destination:&nbsp; :&nbsp;${destination}
 Flight Company: &nbsp; :&nbsp;${flightCompany}
 Date of Flight: &nbsp; :&nbsp;${departureDate}
 Departure Time: &nbsp; :&nbsp;${departureTime}
 Arrival Time: &nbsp; :&nbsp;${arrivalTime}
 Amount to be paid: &nbsp; :&nbsp;${finalValue}
 
<button type="submit" formaction="./confirmBooking">Confirm Flight Booking</button>

</form>


 
</body>
</html>