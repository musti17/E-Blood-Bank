</html><%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String address = request.getParameter("address");
String phone_no = request.getParameter("phone_no");
String website = request.getParameter("website");
String email = request.getParameter("email");
String city = request.getParameter("city");

try{
Connection con = ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("update hospital set name=?,address=?,phone_number=?,website=?,email=?,city=? where hospital_id=?");
ps.setString(1, name);
ps.setString(2, address);
ps.setString(3, phone_no);
ps.setString(4, website);
ps.setString(5, email);
ps.setString(6, city);
ps.setString(7, id);
ps.executeUpdate();
response.sendRedirect("editDeleteHospital.jsp?msg=valid");
}
catch(Exception e){
response.sendRedirect("editDeleteHospital.jsp?msg=invalid");
}
%>

