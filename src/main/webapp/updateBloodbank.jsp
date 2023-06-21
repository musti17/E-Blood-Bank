<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<%@include file="breadcrumbs.html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
String id=request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from blood_bank where bank_id='"+id+"'");
	while(rs.next())
	{
%>
<div class="container">
<form action="updateBloodbankAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.print(id); %>">
<h2>BloodBank Name</h2>
<input type="text" value="<%=rs.getString(2)%>" name="name">
<hr>
<h2>City</h2>
<input type="text" value="<%=rs.getString(3)%>" name="city">
<hr>
<h2>Phone Number</h2>
<input type="text" value="<%=rs.getString(4)%>" name="phone_no">
<hr>
<h2>Email</h2>
<input type="email" value="<%=rs.getString(5)%>" name="email">
<hr>
<h2>Website</h2>
<input type="text" value="<%=rs.getString(6)%>" name="website">
<br>

<center><button type="submit" class="button">Save</button></center>
</form>
</div>
<% 
	}
}
catch(Exception e){
	System.out.print(e);
}
%>


<br>

<br>
<br>
<br>
<h3><center>All Right Reserved @ El Programmers 2.0</center></h3>

</body>
</html>