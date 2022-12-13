<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from hospital where hospital_id='"+id+"'");
	response.sendRedirect("editDeleteHospital.jsp?msg=deleted");
}
catch(Exception e)
{
	response.sendRedirect("editDeleteHospital.jsp?msg=invalid");
}
%>