<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String city = request.getParameter("city");
String phone_no = request.getParameter("phone_no");
String email = request.getParameter("email");
String website = request.getParameter("website");

try{
Connection con = ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("update blood_bank set name=?,city=?,phone_no=?,email=?,website=? where bank_id=?");
ps.setString(1, name);
ps.setString(2, city);
ps.setString(3, phone_no);
ps.setString(4, email);
ps.setString(5, website);
ps.setString(6, id);
ps.executeUpdate();
response.sendRedirect("editDeleteBloodbank.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("editDeleteBloodbank.jsp?msg=invalid");
}
%>