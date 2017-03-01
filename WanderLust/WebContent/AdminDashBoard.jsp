<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>

</head>

<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<br>
<br>
<br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
    
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Flight <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="./AdminFlight?option=display">Display All</a></li>
          <li><a href="AdminInserFlight.jsp?option=insert">Insert</a></li>
          <li><a href="./AdminFlight?option=delete">Delete</a></li>
           <li><a href="./AdminFlight?option=up">Update</a></li>
            <li><a href="./AdminFlight?option=search">Search</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Hotel <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="./AdminHotel?option=display">Display All</a></li>
          <li><a href="AdminInserHotel.jsp?option=insert">Insert</a></li>
          <li><a href="./AdminHotel?option=delete">Delete</a></li>
           <li><a href="./AdminHotel?option=up">Update</a></li>
            <li><a href="./AdminHotel?option=search">Search</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Promotion <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Display All</a></li>
          <li><a href="#">Insert</a></li>
          <li><a href="#">Delete</a></li>
           <li><a href="#">Update</a></li>
            <li><a href="#">Search</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">User <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Display All</a></li>
          <li><a href="#">Delete</a></li>
         
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Update Profile</a></li>
          <li><a href="#">Add Another</a></li>
          <li><a href="#">Remove Another</a></li>
        </ul>
      </li>
      
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="AdminProfile.jsp"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
      <li><a href="./Logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  


</body>
</html>
