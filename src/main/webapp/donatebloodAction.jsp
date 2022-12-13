

<%@page import="java.util.Date"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Timestamp"%>
<%@page import ="java.time.*" %>
<%@page import="java.sql.*"%>
<%
Date date= new Date();
long time = date.getTime();
Timestamp ts = new Timestamp(time);
String d= ts+"";
String id = request.getParameter("id");
String did = request.getParameter("did");
String confirm = request.getParameter("confirm");
String hid = request.getParameter("hid");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	PreparedStatement ps = con.prepareStatement("insert into donortransaction(transid,donorid,message,hospitalid, date, bloodgroup) values(?,?,?,?,?,?)");
    //PreparedStatement ps = con.prepareStatement("call addbloodbank(?,?,?,?,?,?)");
    ResultSet rs=st.executeQuery("select bloodgroup from donor where id='"+did+"'"); 
    rs.next();
    String bg=rs.getString("bloodgroup");
	ps.setString(1, id);
	ps.setString(2, did);
	ps.setString(3, confirm);
	ps.setString(4, hid);
	ps.setString(5,d);
	ps.setString(6,bg);
	ps.executeUpdate();
	response.sendRedirect("donateblood.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("donateblood.jsp?msg=invalid");	
}
%>
