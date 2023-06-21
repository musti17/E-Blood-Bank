<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<%@include file="breadcrumbs.html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Admin: Add Donor</title>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: solid;
    background:white;
    height: 60px;
    font-size: 16px;
padding:15px;
width:60%;
border-radius: 30px;
margin-left:20%;
}
body {
  background-color:  #fea49f;
}
h2,h1
{
margin-left:20%;
}
hr
{
width:60%;
}



img{
width:100%;
height:609px;

}



c {
position: fixed;
   bottom: 100px;
    background-color: red;
}

.footer {
  padding-top:50px ;
  color:#f0f9ff;
  background-color:#282d32;
   max-height: 30vh;
    display: flex;
    flex-direction: column;
}

.footer h3 {
  margin-top:0;
  margin-bottom:12px;
  font-weight:bold;
  font-size:16px;
}

.footer ul {
  padding:0;
  list-style:none;
  line-height:1.6;
  font-size:14px;
  margin-bottom:0;
}

.footer ul a {
  color:inherit;
  text-decoration:none;
  opacity:0.6;
}

.footer ul a:hover {
  opacity:0.8;
}

@media (max-width:767px) {
  .footer-dark .item:not(.social) {
    text-align:center;
    padding-bottom:20px;
  }
}

.footer .item.text {
  margin-bottom:36px;
}

@media (max-width:767px) {
  .footer-dark .item.text {
    margin-bottom:0;
  }
}

.footer .item.text p {
  opacity:0.6;
  margin-bottom:0;
}

.footer .item.social {
  text-align:center;
}

@media (max-width:991px) {
  .footer .item.social {
    text-align:center;
    margin-top:20px;
  }
}

.footer .item.social > a {
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



.footer .copyright {
  text-align:center;
  padding-top:24px;
  opacity:0.3;
  font-size:13px;
  margin-bottom:0;
}
#spinner {
  display: none;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
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
	ResultSet rs = st.executeQuery("select max(id) from donor");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div class="container">
	<h1 style="color:red;">Donor ID: <%out.print(id); %></h1>
	<% 
	}
catch(Exception e)
{}
%>
<div class="container">
<form action="addNewDonorAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.print(id); %>">
<h2>Name</h2>
<input type="text" placeholder="Enter Name" name="name">
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="Enter Father Name" name="father">
<hr>
<h2>Mother Name</h2>
<input type="text" placeholder="Enter Mother Name" name="mother">
<hr>
<h2>Date of Birth</h2>
<center><input type="date" placeholder="Enter Date Of Birth" name="dob"></center>
<hr>
<h2>Weight</h2>
<input type="number" placeholder="Enter Weight(in Kg)" name="weight">
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber">
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Email" name="email">
<hr>
<h2>Blood Group</h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>
<hr>
<h2>City</h2>
<input type = "text" placeholder="Enter City" name="city">
<br>
<center><button type="submit" class="button" id="save-btn">Save</button></center>
</form>
<div id="spinner">
    <img src="images/Spinner.gif" alt="Loading...">
  </div>
</div>

  </div>

  <div class="footer">
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
  $('#save-btn').click(function() {
    $('#spinner').show();
  });
  
  $(document).ajaxStop(function() {
    $('#spinner').hide();
  });
});
</script>


</body>
</html>