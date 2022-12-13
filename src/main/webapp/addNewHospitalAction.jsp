
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String address = request.getParameter("address");
String phone_number = request.getParameter("phone_number");
String website = request.getParameter("website");
String email = request.getParameter("email");
String city = request.getParameter("city");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into hospital values(?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, address);
	ps.setString(4, phone_number);
	ps.setString(5, website);
	ps.setString(6, email);
	ps.setString(7, city);
	ps.executeUpdate();
	response.sendRedirect("addNewHospital.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("addNewHospital.jsp?msg=invalid");	
}
%>
