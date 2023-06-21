



<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
<%


String id = request.getParameter("id");
String name = request.getParameter("name");
String mobilenumber = request.getParameter("mobilenumber");
String email = request.getParameter("email");
String bloodgroup = request.getParameter("bloodgroup");
String status="pending";
Date date= new Date();
long time = date.getTime();
Timestamp ts = new Timestamp(time);
String d= ts+"";


try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into recipient(recipient_id,name,mobilenumber,email,bloodgroup,status,stamp) values(?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, mobilenumber);
	ps.setString(4, email);
	ps.setString(5, bloodgroup);
	ps.setString(6, status);
	ps.setString(7,d);
	ps.executeUpdate();
	response.sendRedirect("requestBlood.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("requestBlood.jsp?msg=invalid");	
}
%>
