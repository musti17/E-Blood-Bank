<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<%@include file="breadcrumbs.html"%>
<html>
<head>

<title>Admin: Edit List</title>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
   color:  #161748;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: red;
  color: black;}
  
body {
  background-color: #fea49f;
}
.c{<center>
position: fixed;
  
   bottom: 0;
   width: 100%;
   height: 600px;
</center>
}


.footer-dark {
  padding:50px 0;
  color:#f0f9ff;
  background-color:#282d32;
}

.footer-dark h3 {
  margin-top:0;
  margin-bottom:12px;
  font-weight:bold;
  font-size:16px;
}

.footer-dark ul {
  padding:0;
  list-style:none;
  line-height:1.6;
  font-size:14px;
  margin-bottom:0;
}

.footer-dark ul a {
  color:inherit;
  text-decoration:none;
  opacity:0.6;
}

.footer-dark ul a:hover {
  opacity:0.8;
}

@media (max-width:767px) {
  .footer-dark .item:not(.social) {
    text-align:center;
    padding-bottom:20px;
  }
}

.footer-dark .item.text {
  margin-bottom:36px;
}

@media (max-width:767px) {
  .footer-dark .item.text {
    margin-bottom:0;
  }
}

.footer-dark .item.text p {
  opacity:0.6;
  margin-bottom:0;
}

.footer-dark .item.social {
  text-align:center;
}

@media (max-width:991px) {
  .footer-dark .item.social {
    text-align:center;
    margin-top:20px;
  }
}

.footer-dark .item.social > a {
  font-size:20px;
  width:36px;
  height:36px;
  line-height:36px;
  display:inline-block;
  text-align:center;
  border-radius:50%;
  box-shadow:0 0 0 1px rgba(255,255,255,0.4);
  margin:0 8px;
  color:#fff;
  opacity:0.75;
}



.footer-dark .copyright {
  text-align:center;
  padding-top:24px;
  opacity:0.3;
  font-size:13px;
  margin-bottom:0;
}
</style>
</head>
<body>
<br>
<%
int rowsPerPage = 5;
int currentPage = 1;

String pageNo = request.getParameter("page");
if (pageNo != null) {
    currentPage = Integer.parseInt(pageNo);
}

int startRow = (currentPage - 1) * rowsPerPage;

try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM donor");
    rs.next();
    int numRows = rs.getInt(1);

    int numPages = (int) Math.ceil((double) numRows / rowsPerPage);

    rs = st.executeQuery("SELECT * FROM donor LIMIT " + startRow + "," + rowsPerPage);

%>

<ul class="breadcrumb">
  <li><a href="home.jsp">Home/</a></li>
  <li><a href="editDelete.jsp">Edit Delete List/</a></li>
  <li><a href="#">Summer 15</a></li>
</ul>
    <table id="customers">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Father Name</th>
            <th>Mother Name</th>
            <th>Date Of Birth</th>
            <th>Weight</th>
            <th>Mobile Number</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Blood Group</th>
            <th>City</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <%
        while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getInt(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(9) %></td>
            <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(11) %></td>
            <td><a href="updateDonor.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
            <td><a href="deleteDonor.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
        </tr>
        <%
        }
        %>
    </table>

    <div>
    <center>
        <%
        if (currentPage > 1) {
        %>
            <a href="?page=<%= currentPage - 1 %>">Previous</a>
        <%
        }
        %>
        <%
        for (int i = 1; i <= numPages; i++) {
        %>
            <% if (i == currentPage) { %>
                <b><%= i %></b>
            <% } else { %>
                <a href="?page=<%= i %>"><%= i %></a>
            <% } %>
        <%
        }
        %>
        <%
        if (currentPage < numPages) {
        %>
            <a href="?page=<%= currentPage + 1 %>">Next</a>
        <%
        }
        %>
    </center>
    </div>
<%
} catch (Exception e) {
    System.out.print(e);
}
%>

<br>
<br>
<br>


  <div class="footer-dark">
        <footer>
            <div class="c">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="userLogin.jsp">Be A Donor</a></li>
                            <li><a href="userLogin.jsp">Donate Fund</a></li>
                            <li><a href="userLogin.jsp">Request Blood</a></li>
                            <li><a href="userLogin.jsp">Find Blood</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About Us</h3>
                        <ul>
                            <li><a href="about_us.jsp">Team</a></li>
                            
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>El Programmers 2.0</h3>
                        <p>Email: el.programmers@gmail.com</p> 
                        <p>"Donate Blood!!!"</p>
                        
                    </div>
                    
                <p class="copyright">El Programmers 2.0 © 2022</p>
            </div>
        </footer>
</body>
</html>