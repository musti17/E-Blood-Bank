<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"  %>
<%@page import="java.io.*"  %>
<%@page import="javax.servlet.*"  %>
<%@page import="javax.servlet.http.*"  %>
<%@include file = "index.html" %>
<%@include file="breadcrumbs.html"%>

<!DOCTYPE html>
<html>
<head>
	<title>About Us</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="styleaboutus.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        .nav > ul > li:nth-child(7)
        {
            color: white;
            background-color: black;
        }
        body {
  background-color: #182C61;
}
li a:hover:not(.active) {
  background-color: red;
}

 {
  background-color: #4CAF50;
  }
.contentbox
{
	width: 100%;
	height: 30%;
	position: relative;
	top: 20%;
	margin-bottom: 50px;
	background-color: white;
	box-shadow: 5px 5px 5px read;	
	border-radius: 1000px;
}



.footer-dark {
  padding:50px 0;
  color:#f0f9ff;
  background-color:#282d32;
  position: relative;
	top: 20%
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
<body >
	<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about_us.jsp">About Us</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="adminLogin.jsp"> Admin Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="userLogin.jsp"> User Login</a>
        </li>
        
        
      </ul>
    </div>
  </div>
</nav>
	<div class="heading fix">	
			<label>About Us</label>
		</div>
		<div class="contentbox">
			<div class="box">
				<h4>What We do ?</h4>
				<p>We connect blood donors with recipients, without any intermediary such as blood banks, for an efficient and seamless process.</p>			
			</div>
			<div class="box">
				<h4>Get Notified..!!!</h4>
				<p>E-Blood Bank Connect works with network partners to connect blood donors and recipients through an automated SMS service and a web app.</p>			
			</div>
			<div class="box">
				<h4>Totaly Free</h4>
				<p>E-Blood Bank Connect's ultimate goal is to provide an easy-to-use, easy-to-access, fast, efficient, and reliable way to get life-saving blood, totally Free of cost.</p>
			</div>
			<div class="box">
				<h4>Save Life</h4>
				<p>We are a non profit foundation and our main objective is to make sure that everything is done to protect vulnerable persons. Help us by making a gift !!!</p>
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
    </div>
	</body>
</html>