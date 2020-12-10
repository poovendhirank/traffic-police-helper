
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Medical Team</title>
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

.btn {
	max-width: 960px;
	min-width: 120px;
}

.button {
	margin-top: 5%;
	margin-left: 30%;
	max-width: 960px;
}

.form-btn {
	padding: 20px;
	max-width: 960px;
}

.button>input[type="button"] {
	letter-spacing: 1px;
	margin-left: 30px;
	padding: 15px;
	width: 20%;
	border: 3px solid transparent;
	background-color: white;
	color: #1A6E88;
	border-radius: 20px;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
	box-shadow: 2px 2px 20px #000;
	transition: 2s;
	max-width: 960px;
}

.form-btn>input[type="button"],.form-btn>input[type="submit"] {
	letter-spacing: 1px;
	padding: 10px;
	border: 3px solid transparent;
	background-color: white;
	color: #1A6E88;
	border-radius: 20px;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
	box-shadow: 2px 2px 20px #000;
	transition: 2s;
}

.button>input[type="button"]:hover {
	border-color: transparent;
	color: white;
	width: 24%;
	background-color: #1A6E88;
	transition: 1s;
}

.form-btn>input[type="button"]:hover {
	border-color: transparent;
	color: white;
	background-color: #1A6E88;
	transition: 1s;
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
	padding-top: 15px;
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
	padding: 0px;
}
 #myTable{
      border-collapse:collapse;
      margin-left:105px;
      font-size:0.9em;
      min-width:320px;
      border-radius:5px 5px 5px 5px;
      box-shadow:0 0 20px rgpa(0,0,0,0,15);
     }
     table{
      overflow-x:auto;
      overflow-y:scroll;
      height:300px;
      width:400px;
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
	text-align: center;
	font-weight: 900;
	color: black;
}

.inner {
	display: flex;
}

.outer {
	display: flex;
	margin-left: 6%;
}

.inner1 {
	background-color: white;
	height: 525px;
	border-radius: 4%;
}

.inner1 h1 {
	text-align: center;
	font-size: 20px;
	padding-top: 5%;
	color: #1A6E88;
}

.inner3 {
	background-color: white;
	height: 550px;
	border-radius: 4%;
	text-align: center;
}

.inner3 h1 {
	padding-top: 5%;
	font-size: 20px;
	color: #1A6E88;
}

.inner1 button {
	padding: 10px 22px;
	background: #ede9e8;
	border: 1px solid transparent;
	box-shadow: 5px 5px 20px #000, -5px -5px 20px #ffffff;
}

.inner3 button {
	padding: 8px 15px;
	background: #ede9e8;
	border: 1px solid transparent;
	box-shadow: 5px 5px 20px #000, -5px -5px 20px #fff;
}

.inner3 input[type="submit"] {
	padding: 10px 22px;
	background: #ede9e8;
	border: 1px solid transparent;
	box-shadow: 5px 5px 20px #000, -5px -5px 20px #ffffff;
}

.inner1 button a, .inner3 button a {
	text-decoration: none;
	font-size: 25px;
	color: navy;
	font-family: 'Inconsolata', monospace;
	text-shadow: 2px 2px #ede9e8, -2px -2px #ede9e8, 2px -3px #ede9e8;
}

.inner1 button a:hover, .inner3 button a:hover {
	color: black;
	font-size: 28px;
}

label {
	font-size: 25px;
}

.inner3 input[type="text"] {
	border: 0;
	background: none;
	text-align: center;
	margin: 20px 0px 15px 10px;
	border: 2px solid #999999;
	padding: 6px;
	width: 150px;
	outline: none;
	color: #1A6E88;
	font-size: 20px;
	border-radius: 10px;
	transition: 0.5s;
}

::placeholder {
	color: #c7c7c7;
}

.inner3 input[type="text"]:focus {
	width: 210px;
	border: 3px solid teal;
	transition: 2s;
}

.video {
	width: 400px;
	height: 250px;
}

.imagestats {
	padding-right: 5%;
}

footer {
	background: black;
	color: white;
	text-align: center;
	width: 100%;
	padding: 10px;
}

footer>h1 {
	font-size: 15px;
}

footer>a {
	font-size: 10px;
	color: white;
}

footer>a:hover {
	color: white;
}
</style>
</head>
<body>
<%
		response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
	if (session.getAttribute("muid") == null) {
		response.sendRedirect("medicalLogin.jsp");
	}
	%>

	<div id="mySidebar" class="sidebar">
		
		<div class="row">
		<div class="ml-1">
		<a href="index.html"><i class="fas fa-home"><span>&nbsp;Home</span></i></a>
		</div>
		<div>
		<img class="closebtn" onclick="closeNav()" src="arrow2.png" width="40" height="40"></div>
		</div>
		
		
		<a href="policeLogin.jsp"><i class="fas fa-road"></i><span>&nbsp;Police
				Team</span></a> <a href="trafficCentralLogin.jsp"><i class="fas fa-desktop"></i><span>&nbsp;Central
				Team</span></a> <a href="medicalLogin.jsp"><i class="fas fa-ambulance"></i><span>&nbsp;Medical
				Team</span></a> <a href="#"><i class="fas fa-plus-square"></i><span>&nbsp;Emergency</span></a>
		<a href="mlogout"><i class="fas fa-sign-out-alt"></i><span>&nbsp;Logout</span></a>
		<a href="#"><i class="far fa-comments"></i><span>&nbsp;Feedback</span></a>
		<a href="#"><i class="fas fa-info-circle"></i><span>&nbsp;About</span></a>
	</div>

	<div id="main">
		<div class="row width left_area m-0 justify-content-between">
			<div>
			
				<button class="openbtn" onclick="openNav()">
					<big><label style="color: blue;"><strong>COP
								<span>FRIENDLY</span>
						</strong></big></label>
				</button>
			</div>

			<div class="m-3">
				<span id="displayTime"></span>
			</div>
		</div>

		<div>
			<div class="heading mt-4 col-md-12 col-sm-12 col-12">
				<h2>Medical Rapid Force Team</h2>
			</div>
			<div class="row justify-content-center my-4 mx-0">
				<div class="mr-4">
					<input type="button" onclick="location.href='medical1.jsp';"
						value="EMERGENCY" class="btn" />
				</div>

				<div>
					<input type="button" onclick="location.href='medical2.jsp';"
						value="ACCIDENT" class="btn" />
				</div>
			</div>
			<div class="row m-0">
				<div class=" col-md-6 col-12 col-sm-12 p-4">
					<form class="inner1">
						<h1>EMERGENCY CASES</h1>
						<table id="myTable" border="2" align="center">
							<thead>
								<th>Location</th>
								<th>Type Of Accident</th>
								<th>Number Of People</th>
								<th>Date</th>
								<th>Time</th>
							</thead>
							<%
								try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem", "root", "17Cs108@#");
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select* from accambu");
								while (rs.next()) {
							%>
							<tbody>
								<tr>
									<td><%=rs.getString("location")%></td>
									<td><%=rs.getString("typeofaccident")%></td>
									<td><%=rs.getString("noofpeo")%></td>
									<td><%=rs.getString("dat")%></td>
									<td><%=rs.getString("tim")%></td>
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
						
					</form>
				</div>
				<div class="col-md-6 col-12 col-sm-12 p-4">
					<form class="inner3" action="deleteambudetails" method="post">
						<h1>SEND AMBULENCE</h1>
						<label>Location :</label> <input type="text" name="location"
							placeholder="Location" /></br><label>Type Of Accident :</label> <input type="text" name="toa" placeholder="Type of Accident" /></br>
							 <label>Date :</label> <input type="text" name="dat" placeholder="Date" /></br>
							  <label>Time :</label> <input type="text" name="tim" placeholder="Time" /></br>
						<div class="row justify-content-center">
							<div class="form-btn">
								<input type="button" onclick="location.href='tel:103';"
									value="CALL" />
							</div>
							<div class="form-btn">
								<input type="button"
									onclick="location.href='https://globfone.com/call-phone/';"
									value="LINE" />
							</div>
						</div>
						<div class="">
							<input type="submit" value="SUBMIT"
								class="justify-content-center" />
						</div>


					</form>
				</div>
			</div>
		</div>
		<footer>
			<h1 style="text-align: center;">For Inform Accident Call @103 &
				To Get Ambulance Call @108</h1>

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
					+ currentSs + " | " + currentDay + "/" + currentMonth + "/"
					+ currentYear;
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
