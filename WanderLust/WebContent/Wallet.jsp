<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="UserDashBoard.jsp"></jsp:include>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wallet</title>
</head>
<body>
<form>

<p>

<button type="submit" formaction="AddMoney.jsp">Add Money</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="submit" formaction="./DisplayWallet">Display Wallet</button>
<br>
<br>
 Wallet Status&nbsp; :&nbsp;${balance}
</p>

</form>
</body>
</html>