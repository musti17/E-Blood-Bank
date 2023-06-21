<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from blood_bank where bank_id='"+id+"'");
	response.sendRedirect("editDeleteBloodbank.jsp?msg=deleted");
}
catch(Exception e)
{
	response.sendRedirect("editDeleteBloodbank.jsp?msg=invalid");
}
%>