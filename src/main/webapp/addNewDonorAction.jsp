<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String father = request.getParameter("father");
String mother = request.getParameter("mother");
String dob = request.getParameter("dob");
String weight = request.getParameter("weight");
String mobilenumber = request.getParameter("mobilenumber");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String bloodgroup = request.getParameter("bloodgroup");
String city = request.getParameter("city");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?,?,?)");
	//PreparedStatement ps = con.prepareStatement("call addNewDonor(?,?,?,?,?,?,?,?,?)");
	//procedure call worked
	//out.println("procedure ran");
    ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, father);
	ps.setString(4, mother);
	ps.setString(5, dob);
	ps.setString(6, weight);
	ps.setString(7, mobilenumber);
	ps.setString(8, gender);
	ps.setString(9, email);
	ps.setString(10, bloodgroup);
	ps.setString(11, city);
	ps.executeUpdate();
	response.sendRedirect("addNewDonor.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("addNewDonor.jsp?msg=invalid");	
}
%>
