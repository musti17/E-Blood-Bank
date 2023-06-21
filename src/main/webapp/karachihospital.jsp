<!DOCTYPE HTML>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<style>
#karachihospital {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#karachihospital td, #karachihospital th {
  border: 1px solid #ddd;
  padding: 8px;
}

#karachihospital tr:nth-child(even){background-color: #f2f2f2;}

#karachihospital tr:hover {background-color: #ddd;}

#karachihospital th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</style>
</head>
<body>
<center>
<br> <br><button onclick="window.print()">PrintNow</button>
<br><br>
<table id="karachihospital">
<tr>
<th>Name</th>
<th>Address</th>
<th>Phone Number</th>
<th>Website</th>
<th>Email</th>
<th>City</th>
</tr>
<tr>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
//	ResultSet rs = st.executeQuery("select * from bloodbank.hospital where city='karachi'");
	ResultSet rs = st.executeQuery(" select * from karachihospital");	
while(rs.next())
	{
%>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
</tr>
<% 
	}
	}
catch(Exception e)
{
	System.out.print(e);
}
%>
</table>




</table>
</center>


</body>
</html>