<html>
<%@include file="breadcrumbs.html"%>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/bootstrap.css" rel="stylesheet" type="text/css">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">

 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>E-BLOOD BANK</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
<style>
li a:hover:not(.active) {
  background-color: red;
}

 {
  background-color: #4CAF50;
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
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}

.readobox
{
	width: 100%;
	height: 33%;
	position: relative;
	top: 5%;
	margin-bottom: 50px;
	background-color: #182C61;
	box-shadow: 2px 5px 5px black;	
	border-radius: 15px;
}
.readibox
{
	width:33%;
	height: 100%;
	position: relative;
	display: inline-block;
	background-color:#182C61 ; 
	border-left: 1px solid black;	
}
.readibox>i
{
	font-size: 70px;
	position: absolute;
	left: 40%;
	top: 10%;
	color: #ffca08;
}
.emphasized { font-style: italic; }

.lasti > i
{
	left: 45%;
}
.readibox>h4
{
	font-size: 30px;
	position: absolute;
	left: 20%;
	top: 40%;
	color: #FFFF;
	text-transform: capitalize;
}
.readibox>a>button
{
	font-size: 15px;
	position: absolute;
	left: 27%;
	top: 70%;
	background-color: black;
	text-align:center;
	padding:5px;
	border-radius:10px;
	opacity: 0.9;
	color:white;
	cursor:pointer;
	text-transform:uppercase;
	width: 170px;
	height: 40px;
	font-weight: bold;
	font-size: 15px;
	letter-spacing: 1px;
	border:2px solid black;
	box-sizing: border-box;
	box-shadow: 2px 2px 4px black;	
}
.lasti>a>button
{
	left: 32%;
}
.readibox>a>button:hover
{
	transition: 0.5s;
	opacity: 1;
	background-color: #ed1b24;
}
</style>
</head>
<body>



<nav class="navbar navbar-expand-lg bg-white navbar-red">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><font color="red" size=5><strong><span class="emphasized">E-BLOOD BANK</span></span></strong> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
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
<div style="max-width:100%">
  <img class="mySlides"  src="i1.jpg" >
  <img class="mySlides"  src="i2.jpg" >
  <img class="mySlides"  src="i3.jpg" >
  <img class="mySlides"  src="s1.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000); // Change image every 4 seconds
}
</script>



<center>

<h2> <span class="emphasized">"ONCE A BLOOD DONOR IS ALWAYS A LIFESAVER "</span>&#128522</h2>
</center>


  <br>
  
  
  
  </div>
</div>

<div class="readobox">
      <div class="readibox">
        <i class="fa fa-tint" aria-hidden="true"></i>
        <h4>WHY GIVE BLOOD ?</h4>
        <a href="blood_tips.jsp"><button> READ MORE</button></a>
      </div>
      <div class="readibox">
        <i class="fa fa-user" aria-hidden="true"></i>
        <h4>New User Signup</h4>
        <a href="user.jsp"><button> Signup</button></a>
      </div>
      <div class="readibox lasti">
        <i class="fa fa-list-alt" aria-hidden="true"></i>
        <h4>Pending Blood Request</h4>
        <a href="adminLogin.jsp"><button>Show details</button></a>
      </div>
    </div>
<br>         
<br>


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
                        <p>Email : el.programmers@gmail.com</p> 
                        <p>"Donate Blood!!!"</p>
                        
                    </div>
                    
                <p class="copyright">El Programmers 2.0 © 2022</p>
            </div>
        </footer>
    </div>
    
</body>

</html>


