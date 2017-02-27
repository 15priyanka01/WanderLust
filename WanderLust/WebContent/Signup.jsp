<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form method="post" action="registration.jsp">
            
           
               
                   <center>
                        Enter Information Here
                   
               
                
                    <p>
                        User Name
                        <input type="text" name="fname" value="" />
                    </p>
                    <p>
                       Address
                        <input type="text" name="address" value="" />
                    </p>
                    <p>
                        Email
                        <input type="text" name="email" value="" />
                    </p>
					<p>
						Phone No
						<input type="number" name"phone" value=""/>
						
						</p>
                    <p>
                        User Id
                        <input type="text" name="uname" value="" />
                    </p>
                    <p>
                        Password
                        <input type="password" name="pass" value="" />
                    </p>
                    <p>
                        <input type="submit" value="Submit" />
                        <input type="reset" value="Reset" />
                    </p>
                    <p>
                        Already registered!! <a href="index.jsp">Login Here</a>
                    </p>
                
           
            </center>
        </form>
</body>
</html>