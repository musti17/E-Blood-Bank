<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="breadcrumbs.html"%>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String city = request.getParameter("city");
String phone_no = request.getParameter("phone_no");
String email = request.getParameter("email");
String website = request.getParameter("website");

try{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("insert into blood_bank values(?,?,?,?,?,?)");
    //PreparedStatement ps = con.prepareStatement("call addbloodbank(?,?,?,?,?,?)");

ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, city);
ps.setString(4, phone_no);
ps.setString(5, email);
ps.setString(6, website);
ps.executeUpdate();
response.sendRedirect("addNewBloodbank.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("addNewBloodbank.jsp?msg=invalid");	
}
%>
