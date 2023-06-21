<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="userHeader.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<center>
<button onclick="window.print()">PrintNow</button>
<h2>Donor List</h2>
<table id="customers">
<tr>
<th>ID</th>
<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Date Of Birth</th>
<th>Weight</th>
<th>Mobile Number></th>
<th>Gender</th>
<th>Email</th>
<th>Blood Group</th>
<th>City</th>
</tr>
<tr>
<%
String city=request.getParameter("City");
String bg=request.getParameter("bloodgroup");
out.println(bg);
try{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from donor where city='"+city+"'and bloodgroup='"+bg+"'");
while(rs.next())
{
%>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td><%=rs.getString(9) %></td>
<td><%=rs.getString(10) %></td>
<td><%=rs.getString(11) %></td>
</tr>
<br>
<%
}
}
catch(Exception e)
{
System.out.print(e);
}

%>
<center>
<h2>Blood Bank List</h2>
<table id="customers">
<tr>
<th>Bank Name</th>
<th>City</th>
<th>Phone Number></th>
<th>Email</th>
<th>Website</th>
</tr>
<tr>
<%
try{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from blood_bank where city='"+city+"'");
while(rs.next())
{
%>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
</tr>
<br>
<%
}
}
catch(Exception e)
{
System.out.print(e);
}
%></table>
<h2>Hospital List</h2>
<table id="customers">
<tr>
<th>Hospital Name</th>
<th>Address</th>
<th>Phone Number></th>
<th>Website</th>
<th>Email</th>
<th>City</th>
</tr>
<tr>
<%

try{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from hospital where city='"+city+"'");
while(rs.next())
{
%>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
</tr>
<br>
<%
}
}
catch(Exception e)
{
System.out.print(e);
}
%>

</center>
<br>
<br>
<br>
<br>
<h3><center></center></h3>
</body>
</html>
