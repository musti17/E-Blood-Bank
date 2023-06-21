<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
session.setAttribute("username",username); 
String password=request.getParameter("password"); 
Connection con = ConnectionProvider.getCon();
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from user where username='"+username+"' and password='"+password+"'"); 
try{
	rs.next();
	        if(rs.getString("password").equals(password)&&rs.getString("username").equals(username)) 
			{ 
	        	response.sendRedirect("userHome.jsp");
			} 
		else{
			response.sendRedirect("userLogin.jsp?msg=invalid");
		    }
}
catch (Exception e) {
e.printStackTrace();
}
%>