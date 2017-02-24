


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="BlackHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Booking</title>
</head>
<body>
<form>
<p>
<b>Source</b>&nbsp; :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select id="source">
	<option value=""></option>
   <option value="New Delhi">New Delhi(Delhi,India)</option>
    <option value="Mumbai">Mumbai(Maharashtra,India)</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
<b>Destination:</b>&nbsp;&nbsp;
<select id="destination">
	<option value=""></option>
   <option value="New Delhi">New Delhi(Delhi,India)</option>
    <option value="Mumbai">Mumbai(Maharashtra,India)</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chennai">Chennai</option>
    <option value="Goa">Goa</option>
</select>


<div>
<b>Check In:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label for="datetimepicker1" class="form-label"></label>
        <input id="datetimepicker1" type="text" data-time-picker="date" placeholder="mm/dd/yyyy" class="form-control"><span class="material-icons-event icon icon-md icon-primary"></span>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Check Out: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
		
                        <label for="datetimepicker2" class="form-label"></label>
                        <input id="datetimepicker2" type="text" data-time-picker="date" placeholder="mm/dd/yyyy" class="form-control"><span class="material-icons-event icon icon-md icon-primary"></span>
                      </div>
                      <br>
                      <br>
                      
                    <div>
                      <b>Number of Seats :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                       <label for="adults" class="form-label"></label>
                        <select id="adults" data-placeholder="-" data-minimum-results-for-search="Infinity" class="form-control select-filter">
                          <option>-</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                        </div>
                      
                      <div>
                      
                      </div>
                    
		
</form>
</body>
</html>