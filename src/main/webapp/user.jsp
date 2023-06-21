<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="breadcrumbs.html"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="index.html"%>   
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
 	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">  
<style>
input[type="text"],
input[type="text"],
input[type="text"],
 input[type="password"],
 input[type="text"],
 input[type="text"],
  input[type="submit"]
{
    border: double;
    background:silver;
    height: 50px;
    font-size: 16px;
margin-left:35%;
padding:15px;
width:30%;
border-radius: 25px;
}

li a:hover:not(.active) {
  background-color: red;
}

 {
  background-color: #4CAF50;
  }

.form {
    background-image:url(user.jpg);
    background-position:relaive;
    width:1800px;
    height:2000px

  background: black;
}
}
  body {
  background: red;
}


.footer-dark {
  padding:50px 0;
  color:#f0f9ff;
  background-color:#282d32;
  
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">  
<title> Signup Form</title>
</head>

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">  
<title> Signup Form</title>
</head>


<body>


<div class="form">
<center><h1><strong>User Details</strong></h1></center>

<form action="user_signup.jsp" method="post">
<div class="form-group">
<center><h2><font color="black" size=5>First Name</h2></center>
<input type="text" placeholder="Enter First Name" name="first_name">


<center><h2><font color="black" size=5>Last Name</h2></center>
<input type="text" placeholder="Enter Last Name" name="last_name">

<center><h2><font color="black" size=5>Username</h2></center>
<input type="text" placeholder="Enter Username" name="username" >

<center><h2><font color="black" size=5>Password</h2></center>
<input type="password" placeholder="Enter Password" name="password" >

<center><h2><font color="black" size=5>Address</h2></center>
<input type="text" placeholder="Enter Address"  name="address">


<center><h2><font color="black" size=5>Contact No.</h2></center>
<input type="text" placeholder="Enter Contact No." name="contact" >

<center><button type="submit" class="button"><font color="red" size=5>Submit</button></center>




</form>
</div>
</div>
 <div class="footer-dark">
        <footer>
            <div class="container">
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
