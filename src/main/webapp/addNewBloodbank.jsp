<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>'
<%@include file="breadcrumbs.html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
<title>Admin: Add Blood Bank </title>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 
<style>
.progress-bar {
  transition-duration: 4s;
}
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
		margin-left:20%;
}
hr
{
width:60%;	
}
.container {

    background-image:url(blood_bank.jpg);
    background-position:default;
    width:1700px;
    height:800px;
}

.c{<center>
position: fixed;
   bottom: 100px;
</center>
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
</head>
<body>
<%

String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><font color="red" size="5">Successfully Updated</font></center>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5">Something went wrong !Try Again!</font></center>
<%}%>
<% 
int id=1;
try
{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select max(bank_id) from blood_bank");
while(rs.next())
{
id=rs.getInt(1);
id=id+1;
}%>
<div class="container">
<h1 style="color:red;">Bank ID: <%out.print(id); %></h1>
<%
}
catch(Exception e)
{}
%>
<div class="container">
<form id="myForm" action="addNewBloodbankAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.print(id); %>">
<h2><font color="black">BloodBank Name</h2>
<input type="text" placeholder="Enter Name" name="name">
<hr>
<h2>City</h2>
<input type="text" placeholder="Enter City" name="city">
<hr>
<h2>Phone Number</h2>
<input type="text" placeholder="Enter Phone Number" name="phone_no">
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Email" name="email">
<hr>
<h2>Website</h2>
<input type="text" placeholder="Enter Website" name="website">
<br>

    <center><button type="submit" class="button" id="save-btn"><font color="red">Save</button></center>
</form>
<div class="progress" style="display:none">
    <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
  </div>
</div>

  </div>

<br>
<br>
<br>
<br>
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
	
	<script>
  $(document).ready(function() {
    $('#myForm').on('submit', function(e) {
      $('.progress').show(); // show progress bar
      var progressBar = $('.progress-bar');

      // start progress bar animation
      var progress = setInterval(function() {
        var currentVal = parseInt(progressBar.attr('aria-valuenow'));
        var nextVal = currentVal + 10;
        progressBar.css('width', nextVal + '%').attr('aria-valuenow', nextVal);

        if (nextVal === 100) {
          clearInterval(progress);
          $('.progress').hide(); // hide progress bar
        }
      }, 200);

      // submit form
      // You might want to replace this with your own code for submitting the form via AJAX
      // to prevent the page from refreshing and interfering with the progress bar animation
      // as well as to handle any errors that may occur during submission
      return true;
    });
  });
</script>
</body>
</html>