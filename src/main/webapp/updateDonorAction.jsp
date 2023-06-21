<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String dob=request.getParameter("dob");
String weight=request.getParameter("weight");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String city=request.getParameter("city");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update donor set name=?,father=?,mother=?,dob=?,weight=?,mobilenumber=?,email=?,city=? where id=?");
	ps.setString(1, name);
	ps.setString(2, father);
	ps.setString(3, mother);
	ps.setString(4, dob);
	ps.setString(5, weight);
	ps.setString(6, mobilenumber);
	ps.setString(7, email);
	ps.setString(8, city);
	ps.setString(9, id);
	ps.executeUpdate();
	response.sendRedirect("editDeleteList.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>