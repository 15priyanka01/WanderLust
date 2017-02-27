<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<jsp:include page="BlackHeader.jsp"></jsp:include>

<div class="container">
  <h2>Enter Information Here</h2>
  <form class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="userId">User Id:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" name="userId" id="userId" placeholder="Enter user id">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="userName">Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="userName" id="userName" placeholder="Enter name">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="userPhoneNo">Phone no:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="userPhoneNo" id="userPhoneNo" placeholder="Enter phone no">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="userEmailId">Email id:</label>
      <div class="col-sm-10">          
        <input type="email" class="form-control" name="userEmailId" id="userEmailId" placeholder="Enter Email id">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="userAddress">Address:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="userAddress" id="pwd" placeholder="Enter address">
      </div>
    </div>
       <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" name="userPassword" id="pwd" placeholder="Enter password">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>