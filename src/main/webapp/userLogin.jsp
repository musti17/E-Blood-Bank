<!DOCTYPE html>
<%@include file ='index.html' %>
<html lang="en">
<%@include file="breadcrumbs.html"%>

<head>
<title>User Login</title>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
 	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">  
 
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: solid;
    background:white;
    border-color: black;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

  body {
  background-color: white;
}
li a:hover:not(.active) {
  background-color: red;
}

 {
  background-color: #4CAF50;
  }

.abc {

    background-image:url(userlogin.jpg);
    background-position:relative;
    width:1700px;
    height:500px;
}
.c{<center>
position: fixed;
   bottom: 100px;
</center>
}

.footer-dark {
  padding:50px ;
  color:#f0f9ff;
  background-color:#282d32;
   min-height: 100vh;
    display: flex;
    flex-direction: column;
}

.footer-dark h3 {
  margin-top:0;
  margin-bottom:12px;
  font-weight:bold;
  font-size:16px;
}

.footer-dark ul {
  padding:0;
  list-style:none;
  line-height:1.6;
  font-size:14px;
  margin-bottom:0;
}

.footer-dark ul a {
  color:inherit;
  text-decoration:none;
  opacity:0.6;
}

.footer-dark ul a:hover {
  opacity:0.8;
}

@media (max-width:767px) {
  .footer-dark .item:not(.social) {
    text-align:center;
    padding-bottom:20px;
  }
}

.footer-dark .item.text {
  margin-bottom:36px;
}

@media (max-width:767px) {
  .footer-dark .item.text {
    margin-bottom:0;
  }
}

.footer-dark .item.text p {
  opacity:0.6;
  margin-bottom:0;
}

.footer-dark .item.social {
  text-align:center;
}

@media (max-width:991px) {
  .footer-dark .item.social {
    text-align:center;
    margin-top:20px;
  }
}

.footer-dark .item.social > a {
  font-size:20px;
  width:36px;
  height:36px;
  line-height:36px;
  display:inline-block;
  text-align:center;
  border-radius:50%;
  box-shadow:0 0 0 1px rgba(255,255,255,0.4);
  margin:0 8px;
  color:#fff;
  opacity:0.75;
}



.footer-dark .copyright {
  text-align:center;
  padding-top:24px;
  opacity:0.3;
  font-size:13px;
  margin-bottom:0;
}
</style>
</head>

<body>
<div class="abc">
<br>
	<br>
	<%
	String msg=request.getParameter("msg");
	if("invalid".equals(msg))
	{
	%>
	<center><font color="red" size=5>Invalid Username/Password</font></center>
	<%
	}
	%>
	<form action="userLoginAction.jsp" method="post">
	<div class="form-group">
	<center><h2> <font color="black" size=5>Enter Username</h2></font></center>
	<input type="text" placeholder="Enter Username" name="username" required>
	<center><h2><font color="black" size=5>Enter Password</h2></center>
	<input type="password" placeholder="Enter Password" name="password" required>
	<center><button type="submit" class="button"><font color="red" size=5>Submit</button></center>
	</form>
	
</div>
  <div class="footer-dark">
        <footer>
            <div class="c">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="userLogin.jsp">Be A Donor</a></li>
                            <li><a href="userLogin.jsp">Donate Fund</a></li>
                            <li><a href="userLogin.jsp">Request Blood</a></li>
                            <li><a href="userLogin.jsp">Find Blood</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About Us</h3>
                        <ul>
                            <li><a href="about_us.jsp">Team</a></li>
                            
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>El Programmers 2.0</h3>
                        <p>Email: el.programmers@gmail.com</p> 
                        <p>"Donate Blood!!!"</p>
                        
                    </div>
                    
                <p class="copyright">El Programmers 2.0 © 2022</p>
            </div>
        </footer>
</body>
</html>
