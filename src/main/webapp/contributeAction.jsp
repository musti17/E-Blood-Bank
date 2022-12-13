<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
<%
String name=request.getParameter("name");
String address=request.getParameter("address");
String email=request.getParameter("email");
Date date= new Date();
long time = date.getTime();
Timestamp ts = new Timestamp(time);
String contactnumber=request.getParameter("contactnumber");
String d= ts+"";
String city=request.getParameter("city");
String state=request.getParameter("state");
String amount1=request.getParameter("amount1");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","fast");
	con.setAutoCommit(false);
	Statement st= con.createStatement();
	PreparedStatement ps = con.prepareStatement("INSERT INTO contribution (name,address,email,contactnumber,stamp,city,state,amount) VALUES (?,?,?,?,?,?,?,?)");
	ResultSet rs=st.executeQuery("select TacDeducted("+amount1+")");
	rs.next();
	String ta=rs.getString("TacDeducted("+amount1+")");
	out.println(ta);
	ps.setString(1,name);
    ps.setString(2,address);
    ps.setString(3,email);
    ps.setString(4,contactnumber);
    ps.setString(5,d);//long set to string
    ps.setString(6,city);
    ps.setString(7,state);
   // ps.setString(8,amount1);
    ps.setString(8,ta);
    ps.executeUpdate();
	con.commit();
    ps.close();
response.sendRedirect("contribute.jsp?msg=valid"+ta+"");
}catch(Exception e)
{

	//if(!con.isClosed())
	//{
		//con.rollback();
	//}
	response.sendRedirect("contribute.jsp?msg=invalid");
}
   out.print("hello");
%>