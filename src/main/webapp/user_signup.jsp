<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionProvider"%>

<%
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String username = request.getParameter("username");
String password = request.getParameter("password");
String address = request.getParameter("address");
String contact = request.getParameter("contact");

try{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?)");
ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, username);
ps.setString(4, password);
ps.setString(5, address);
ps.setString(6, contact);

ps.executeUpdate();
response.sendRedirect("user.jsp?msg=valid");
}
catch(Exception e)
{
response.sendRedirect("user.jsp?msg=invalid");
}
%>