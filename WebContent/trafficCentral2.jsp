<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Traffic Central Team</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: "Roboto", sans-serif;
	background-color: #1A6E88;
}

.left_area h3 {
	color: #1A6E88;
	margin: 2px;
	padding-left: 23px;
	text-transform: uppercase;
	font-size: 20px;
	font-weight: 900;
}

.left_area span {
	color: white;
}

.timeDiv {
	padding: 5px;
	background: black;
	float: right;
	margin-top: 15px;
	margin-right: 26px;
	border-radius: 2px;
	color: white;
	font-size: 15px;
	font-weight: 600;
}

.timeDiv:hover {
	background: #1B262C;
}

#check:checked ~ .sidebar {
	margin-left: 0px;
}

#check:checked ~ .sidebar a span {
	display: none;
}

#check:checked ~ .sidebar a {
	margin-left: -120px;
}

#check {
	display: none;
}

* {
	box-sizing: border-box
}

}
}
@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
.sidebar {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #1A6E88;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidebar a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 20px;
	color: #f1f1f1;
	display: block;
	transition: 0.3s;
}

.sidebar a:hover {
	color: #f1f1f1;
}

.sidebar .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

.openbtn {
	font-size: 20px;
	cursor: pointer;
	background-color: #111;
	color: white;
	padding: 10px 15px;
	border: none;
}

.openbtn:hover {
	background-color: #444;
}

#main {
	transition: margin-left .5s;
}

.width {
	width: 100%;
	background-color: black;
}

.heading>h2 {
	margin-top: 5%;
	text-align: center;
	font-weight: 900;
	color: black;
}

.inner {
	display: flex;
}

.des {
	margin-left: 10%;
	magin-right: 5%;
	margin-bottom: 5%;
	border: 1px solid #385178;
	width: 1000px;
	height: 500px;
	background-color: white;
	box-shadow: inset 2px 1px 15px #f2f2f2, 2px 2px 8px black;
	border-radius: 15px;
}

.des h2 {
	color: white;
	font-family: 'Inconsolata', monospace;
	padding: 2%;
	padding-left: 40%;
}

.inner {
	margin-top: 5%;
}

.video {
	width: 400px;
	height: 250px;
}

.imagestats {
	padding-right: 5%;
}
#myTable{
      border-collapse:collapse;
      margin-left:100px;
      font-size:0.9em;
      min-width:320px;
      border-radius:5px 5px 5px 5px;
      box-shadow:0 0 20px rgpa(0,0,0,0,15);
     }
     table{
      overflow-x:auto;
      overflow-y:scroll;
      height:400px;
      width:800px;
      display:block;
     }
     #myTable thead tr{
      background-color:#1A6E88;
      color:#ffffff;
      text-align:left;
      font-weight:bold;
     }
     #myTable th,#myTable tbody td{
      padding:12px 15px;
      border:none;
      font-weight:600;
      font-size:14px;
     
     }
     #myTable thead tr{
      color:#ffffff;
      }
     #myTable tbody tr:nth-of-type(even){
      background-color:grey;
     }
     #myTable{
      border-bottom:1px solid #dddddd;
     
     }
     #myTable tbody tr:last-of-type{
     
      border-bottom:2px solid #1A6E88;
     }
     #myTable tbody tr.active-row{
      font-weight:bold;
     }
footer {
	background: black;
	color: white;
	text-align: center;
	width: 100%;
	padding: 20px;
}

footer>h1 {
	font-size: 10px;
}

footer>a {
	font-size: 10px;
	color: white;
}

footer>a:hover {
	color: white;
}

@media screen and (max-width: 450px) {
	.imagestats {
		width: 100%;
		padding-left: 10%;
		padding-bottom: 10px;
	}
	.timeDiv {
		padding: 5px;
		background: black;
		float: right;
		margin-top: 2px;
		margin-right: 10px;
		margin-bottom: 2px;
		border-radius: 2px;
		color: white;
		font-size: 10px;
		font-weight: 600;
	}
}

@media screen and (min-width: 450px) {
	.des
	
        
	padding-left
	:
	30px
	;
	
        
}
}
</style>
</head>
<body>
	<%
		response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
	if (session.getAttribute("tuid") == null) {
		response.sendRedirect("trafficCentralLogin.jsp");
	}
	%>

	<div id="mySidebar" class="sidebar">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
		<a href="index.html"><i class="fas fa-home"><span>&nbsp;Home</span></i></a>
		<a href="policeLogin.jsp"><i class="fas fa-road"></i><span>&nbsp;Police
				Team</span></a> <a href="trafficCentralLogin.jsp"><i class="fas fa-desktop"></i><span>&nbsp;Central
				Team</span></a> <a href="medicalLogin.jsp"><i class="fas fa-ambulance"></i><span>&nbsp;Medical
				Team</span></a> <a href="#"><i class="fas fa-plus-square"></i><span>&nbsp;Emergency</span></a>
		<a href="tlogout"><i class="fas fa-sign-out-alt"></i><span>&nbsp;Logout</span></a>
		<a href="#"><i class="far fa-comments"></i><span>&nbsp;Feedback</span></a>
		<a href="#"><i class="fas fa-info-circle"></i><span>&nbsp;About</span></a>
	</div>

	<div id="main">
		<div class="width left_area">
			<button class="openbtn" onclick="openNav()">
				<big>☰ &nbsp;<label style="color: blue;"><strong>COP
							<span>FRIENDLY</span>
					</strong></big></label>
			</button>
			<div class="timeDiv">
				<span id="displayTime"></span>
			</div>
		</div>

		<div>
			<div class="heading">
				<h2>Traffic Central Team Details</h2>
				  <div class="inner">
				   <div class="des">
						<table id="myTable" border="2" align="center">
							<thead>
								<th>violator Name</th>
								<th>violation Type</th>
								<th>Driving LicenseNo</th>
								<th>Vehicle No</th>
								<th>Location</th>
								<th>Date</th>
								<th>Fine</th>
								<th>Repeater</th>
							</thead>
							<%
								try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem", "root", "17Cs108@#");
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select* from violation");
								while (rs.next()) {
							%>
							<tbody>
								<tr>
									<td><%=rs.getString("violationname")%></td>
									<td><%=rs.getString("violationtype")%></td>
									<td><%=rs.getString("drivinglicenseno")%></td>
									<td><%=rs.getString("vehicleno")%></td>
									<td><%=rs.getString("location")%></td>
									<td><%=rs.getString("dat")%></td>
									<td><%=rs.getString("fine")%></td>
									<td><%=rs.getString("repeater")%></td>
								</tr>
							</tbody>
							<%
								}
							con.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</table>
					</div>
				</div>
				<footer>
					<h1 style="text-align: center;">For Report Violation Call @103
						& To Get Ambulance Call @108</h1>
					<a href=dashboard.jsp">Top</a>
				</footer>
			</div>
		</div>
		<script>
			function leadingZero(number) {
				if (number < 10) {
					return "0" + number;
				} else {
					return number;
				}
			}
			function displayDate() {
				var myDate = new Date();
				var currentSs = leadingZero(myDate.getSeconds());
				var currentHr = leadingZero(myDate.getHours());
				if (currentHr > 12) {
					currentHr = currentHr - 12;
				}
				if (currentHr < 12) {
					currentSs = currentSs + " pm";
				} else {
					currentSs = currentSs + " am";
				}
				var currentMin = leadingZero(myDate.getMinutes());
				var currentYear = myDate.getFullYear();
				var currentMonth = leadingZero(myDate.getMonth() + 1);
				var currentDay = leadingZero(myDate.getDate());
				var displayArea = document.getElementById("displayTime");
				displayArea.innerHTML = currentHr + ":" + currentMin + ":"
						+ currentSs + " | " + currentDay + "/" + currentMonth
						+ "/" + currentYear;
				setTimeout(function() {
					displayDate();
				}, 1000)
			}
			displayDate();
			function openNav() {
				document.getElementById("mySidebar").style.width = "250px";
				document.getElementById("main").style.marginLeft = "250px";
			}

			function closeNav() {
				document.getElementById("mySidebar").style.width = "0";
				document.getElementById("main").style.marginLeft = "0";
			}
		</script>
</body>
</html>
