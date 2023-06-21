



<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="userHeader.html"%>
<%@include file="breadcrumbs.html"%>
<html>
<head>
<title>User:Donate Blood</title>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
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
		padding: 5px;
}
hr
{
width:60%;	
}

.container {
    background-image:url(Logo1.png);
     background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
    width:1900px;
    height:900px
background: black;
}

.c{<center>
position: fixed;
  
   bottom: 0;
   width: 100%;
   height: 600px;
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
	ResultSet rs = st.executeQuery("select max(transid) from donortransaction");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div class="container">
	<h1 style="color:red;">Transaction ID: <%out.print(id); %></h1>
	<% 
	}
catch(Exception e)
{}
%>

<div class="container">
<form action="donatebloodAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.print(id); %>">
<h2><font color = 'black'>Donor Id</h2>
<input type="number" placeholder="Enter Donor Id" name="did">
<hr>
<h2>Confirmation Message</h2>
<input type="text" placeholder="I ________ ,Accept to make this donation:)" name="confirm">
<hr>
<h2>Hospital Id</h2>
<input type="number" placeholder="Enter Hospital Id" name="hid">
<hr>
<center><button type="submit" class="button"><font color = 'red'>Save</button></center>
</form>
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

</body>
</html>