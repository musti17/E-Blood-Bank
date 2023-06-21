<%@page import="Project.ConnectionProvider"%>
<%@include file="header.html"%>
<%@page import="java.sql.*" %>
<%@ page import="org.json.*" %>

<html>
<head>

    <title>Admin Dashboard</title>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css">  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Montserrat Font -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/styles.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    
<style>
img{
width:100%;
height:609px;
}

 body {
  background-color: #182C61;
}
.c{<center>
position: fixed;
   bottom: 100px;
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

.mySlides{
  position: absolute;
  top: 0;
  right: 0;
  z-index: -1;
  display:flex;
}
.card-body{
flex-direction:row;
}
}
</style>

</head>
<body>
<br>
<!-- Main -->
      <main class="main-container">
        <div class="main-title">
          <p class="font-weight-bold">ADMIN DASHBOARD</p>
        </div>

        <div class="main-cards">

         <div class="card">
  <div class="card-inner">
    <p class="text-primary">DONORS</p>
    <i class="large material-icons">accessibility</i>
  </div>
  <span class="text-primary font-weight-bold">
    <% 
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT COUNT(id) AS total_donors FROM donor");
    if (rs.next()) {
      out.print(rs.getInt("total_donors"));
    }
    %>
  </span>
</div>



          <div class="card">
            <div class="card-inner">
              <p class="text-primary">Blood Banks</p>
              <span class=" large material-icons text-orange">add_box</span>
            </div>
            <span class="text-primary font-weight-bold">
            	<% 
			    con = ConnectionProvider.getCon();
			    st = con.createStatement();
			    rs = st.executeQuery("SELECT COUNT(bank_id) AS blood_banks FROM blood_bank");
			    if (rs.next()) {
			      out.print(rs.getInt("blood_banks"));
		    	}
    %>
            </span>
          </div>

          <div class="card">
            <div class="card-inner">
              <p class="text-primary">Hospitals</p>
              <span class="material-icons large text-green">healing</span>
            </div>
            <span class="text-primary font-weight-bold">
            			<% 
			    con = ConnectionProvider.getCon();
			    st = con.createStatement();
			    rs = st.executeQuery("SELECT COUNT(hospital_id) AS hospitals FROM hospital");
			    if (rs.next()) {
			      out.print(rs.getInt("hospitals"));
		    	}
    			%>
            </span>
          </div>

          <div class="card">
            <div class="card-inner">
              <p class="text-primary">USERS</p>
              <span class="material-icons large text-red">verified_user</span>
            </div>
            <span class="text-primary font-weight-bold">
            		<% 
			    con = ConnectionProvider.getCon();
			    st = con.createStatement();
			    rs = st.executeQuery("SELECT COUNT(username) AS users FROM user");
			    if (rs.next()) {
			      out.print(rs.getInt("users"));
		    	}
    %>
            </span>
          </div>

        </div>

        <div class="charts">

          <div class="charts-card">
            <p class="chart-title">Blood Groups</p>
            <div id="chart"></div>
          </div>


        </div>
      </main>
      <!-- End Main -->


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
   
    <!-- Scripts -->
    <!-- ApexCharts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
    // Make a GET request to fetchData.jsp to get the data
    fetch('fetchData.jsp')
        .then(response => response.json())
        .then(data => {
        	// Define the chart options
        	var options = {
        	    chart: {
        	        type: 'bar',
        	        height: 350,
        	        toolbar: {
        	            show: false
        	        }
        	    },
        	    plotOptions: {
        	        bar: {
        	            horizontal: true,
        	            dataLabels: {
        	                position: 'top'
        	            }
        	        }
        	    },
        	    dataLabels: {
        	        enabled: true,
        	        offsetY: -10,
        	        style: {
        	            fontSize: '12px',
        	            colors: ['#fff']
        	        }
        	    },
        	    stroke: {
        	        show: true,
        	        width: 1,
        	        colors: ['#fff']
        	    },
        	    series: [{
        	        name: 'Units',
        	        data: data.map(item => item.units)
        	    }],
        	    xaxis: {
        	        categories: data.map(item => item.bloodgroup),
        	        labels: {
        	            style: {
        	                colors: ['#008FFB', '#00E396', '#FEB019', '#FF4560', '#775DD0']
        	            }
        	        }
        	    }
        	};

            // Render the chart
            var chart = new ApexCharts(document.querySelector("#chart"), options);
            chart.render();
        })
        .catch(error => console.error(error));
</script>

</body>
</html>