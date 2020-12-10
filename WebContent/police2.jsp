<%@ page import="traffic.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traffic Central Team</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style type="text/css">
    body{
       margin: 0;
       padding: 0;
       font-family: "Roboto", sans-serif;
       background-color: white;
    }

    .left_area h3{
       color: #1A6E88;
       margin: 2px;
       padding-left: 23px;
       text-transform: uppercase;
       font-size: 20px;
       font-weight: 900;
    }

    .left_area span{
       color: white;
    }

    .timeDiv{
       padding: 5px;
       background: black;
       float: right;
       margin-top: 15px;
       margin-right: 26px;
       border-radius: 2px;
       color:white;
       font-size: 15px;
       font-weight: 600;
    }

    .timeDiv:hover{
       background: #1B262C;
    }



    #check:checked ~ .sidebar{
       margin-left: 0px;
    }
    #check:checked ~ .sidebar a span{
      display: none;
    }

    #check:checked ~ .sidebar a{
       margin-left:-120px;
    }
    #check{
       display: none;
    }
    * {box-sizing:border-box}
     
        .button{
            margin-top:5%;
            margin-left:30%;
            max-width:960px;
        }
        .button >input[type="button"]{
            letter-spacing: 1px;
            margin-left:30px;
            padding:15px;
            width:20%;
            border:3px solid transparent;
            background-color: white;
            color:#1A6E88;
            border-radius: 20px;
            font-size:20px;
            font-weight: bold;
            cursor:pointer;
            box-shadow: 2px 2px 20px #000;
            transition: 2s;
            max-width:960px;
        }
        .button >input[type="button"]:hover{
            border-color:transparent;
            color:white;
            width:24%;
            background-color: #1A6E88;
            transition:1s;
        }

    @-webkit-keyframes fade {
     from {opacity: .4}
     to {opacity: 1}
    }

    @keyframes fade {
     from {opacity: .4}
     to {opacity: 1}
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
    .width{
    width:100%;
    background-color:black;
    }
    .heading>h2{
            margin-top: 5%;
            text-align: center;
            font-weight:900;
            color:black;
        }
        .inner{
            display:flex;
        }
           
        .inner{
            margin-top:5%;
        }
    .video{
    width: 400px;
    height:250px;
    }

    .imagestats{
    padding-right:5%;
    }
    footer{
       background:black;
       color:white;
       text-align:center;
       width: 100%;
       padding:20px;
    }
    footer>h1{
       font-size:10px;
       }
    footer>a{
    font-size:10px;
    color:white;
    }
    footer>a:hover{
    color:white;
    }


    @media screen and (max-width: 450px) {
     .imagestats{
    width:100%;
    padding-left:10%;
    padding-bottom:10px;
    }
    .timeDiv{
       padding: 5px;
       background: black;
       float: right;
       margin-top: 2px;
       margin-right: 10px;
       margin-bottom: 2px;
       border-radius: 2px;
       color:white;
       font-size: 10px;
       font-weight: 600;
    }
   
       
    }
        @media screen and (min-width: 450px) {
        #containner1, #containner2, #containner3{
        pading-left:30px;
        }
        }
        @media screen and (min-width: 320px) {
         #containner1, #containner2, #containner3{
        pading-left:30px;
        }
        label{
            font-size:25px;
        }
        .button>h1{
        font-weight:900;
        margin-left:10%;
        padding-bottom:10px;
        }
        .violation input[type="text"]{
            border:0;
            background: none;
            text-align: center;
            margin:0px 0px 15px 10px;
            border: 2px solid #1A6E88;
            padding: 6px;
            width: 150px;
            outline: none;
            color: BLACK;
            font-size: 20px;
            border-radius: 10px;
            transition: 0.5s;

        }
        ::placeholder{
            color:#c7c7c7;
        }
        .violation input[type="text"]:focus{
            width:210px;
            border: 3px solid #1A6E88;
            transition:2s;
        }
        #containner1,#containner2,#containner3{
            position:relative;
            margin:5% 0% 5% 30%;
            border:2px solid black;
            width:550px;
            height:750px;
            box-shadow: 3px 3px 15px #1A6E88;
            border-radius:15px;
            transition:40s;
        }
         #containner4{
            position:relative;
            margin:5% 50% 5% 30%;
            border:2px solid black;
            width:550px;
            height:300px;
            box-shadow: 3px 3px 15px #1A6E88;
            border-radius:15px;
            transition:40s;
        }
        #containner1 .violation,#containner2 .violation,#containner3 .violation{
            margin:5% 0% 0% 12%;
        }
        #containner4 .sos{
            margin:5% 0% 0% 12%;
        }
        #containner1,#containner2,#containner3{
            display:none;
        }
        #containner2,#containner3{
            margin:10% 0% 5% 30%;
            height:550px;
        }
        #containner1 .violation >input[type="submit"],#containner2 .violation >input[type="submit"],#containner3 .violation >input[type="submit"],#containner4.sos>input[type="submit"]{
            margin:0% 29%;
            border:3px solid #1A6E88;
            width:140px;
            padding:10px;
            font-size:25px;
            font-weight: bold;
            border-radius: 20px;
            cursor:pointer;
            transition: 1s;
            box-shadow:4px 4px 10px #1A6E88;
        }

        #containner2 .violation >input[type="button"], #containner3 .violation >input[type="button"]{
                margin-top:5%;
        }
        input[type="submit"]:hover{
            color:#1A6E88;
        }
        #containner1>h2{
        color:red;
        }
        #containner1>h3{
        color:green;
        }
        @media screen and (max-width: 500px){
        .violationdiv{
        margin:auto;
        font-size: 20px;
        }
        #containner1,#containner2,#containner3{
        padding-left: 10%;
        padding-right: 10%;
        margin-left: auto;
        margin-right: auto;
            border:2px solid #1A6E88;
            box-shadow: 3px 3px 15px blue;
            border-radius:15px;
            transition:40s;
        }
     
         .violation >input[type="submit"] .violation >input[type="submit"], .violation >input[type="submit"]{
            border:3px solid blue;
            width:auto;
            padding:10px;
            font-size:20px;
            font-weight: bold;
            border-radius: 20px;
            cursor:pointer;
           
        }
        .button >input[type="button"]{
            letter-spacing: 1px;
            margin-left:0px;
            padding:10px;
            width:30%;
            border:3px solid transparent;
            background-color: white;
            color:#1A6E88;
            border-radius: 20px;
            font-size:10px;
            font-weight: bold;
            cursor:pointer;
            box-shadow: 2px 2px 20px #000;
            transition: 2s;
            max-width:960px;
        }
        #containner4{
            margin:10% 0% 5% 30%;
            height:550px;
        }
        .sos>h1{
        text-align:center;
        }
     
        }
    </style>
</head>
<body>
<script language="javascript">
function check(temp)
{
    if(temp==1){
        document.getElementById("containner1").style.display="block";
        document.getElementById("containner2").style.display="none";
        document.getElementById("containner3").style.display="none";
    }
    else if(temp==2)
    {
    document.getElementById("containner1").style.display="none";
         document.getElementById("containner2").style.display="block";
         document.getElementById("containner3").style.display="none";
    }
    else{
    document.getElementById("containner1").style.display="none";
         document.getElementById("containner2").style.display="none";
         document.getElementById("containner3").style.display="block";            }
}
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
    if (currentHr > 12){
        currentHr = currentHr - 12;
    }
    if (currentHr < 12){
        currentSs = currentSs + " pm";
    }else{
        currentSs = currentSs + " am";
    }
    var currentMin = leadingZero(myDate.getMinutes());
    var currentYear = myDate.getFullYear();
    var currentMonth = leadingZero(myDate.getMonth()+1);
    var currentDay = leadingZero(myDate.getDate());
    var displayArea = document.getElementById("displayTime");
        displayArea.innerHTML = currentHr + ":" + currentMin + ":" + currentSs + " | " + currentDay + "/" + currentMonth + "/" + currentYear;
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
  document.getElementById("main").style.marginLeft= "0";
}
  </script>
<%
   response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
   if(session.getAttribute("puid")==null)
   {
	   response.sendRedirect("policeLogin.jsp");
   }
%>
    <div id="mySidebar" class="sidebar">
 <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
 <a href="index.html"><i class="fas fa-home"><span>&nbsp;Home</span></i></a>
      <a href="policeLogin.jsp"><i class="fas fa-road"></i><span>&nbsp;Police Team</span></a>
      <a href="trafficCentralLogin.jsp"><i class="fas fa-desktop"></i><span>&nbsp;Central Team</span></a>
      <a href="medicalLogin.jsp"><i class="fas fa-ambulance"></i><span>&nbsp;Medical Team</span></a>
      <a href="#"><i class="fas fa-plus-square"></i><span>&nbsp;Emergency</span></a>
      <a href="plogout"><i class="fas fa-sign-out-alt"></i><span>&nbsp;Logout</span></a>
      <a href="#"><i class="far fa-comments"></i><span>&nbsp;Feedback</span></a>
      <a href="#"><i class="fas fa-info-circle"></i><span>&nbsp;About</span></a>
</div>
  <div id="main">
<div class="width left_area">
<button class="openbtn" onclick="openNav()"><big>☰ &nbsp;<label style="color:blue;"><strong>COP <span>FRIENDLY</span></strong></big></label></button>
   <div class="timeDiv">
<span id="displayTime"></span>
</div>
    </div>
    <div class="outer">
        <div class="button">
        <h1>Traffic Cop Team</h1><br>
        <br>
            <input type="button" onclick="check(1)" value="VIOLATION"/>
            <input type="button" onclick="check(2)" value="ACCIDENT"/>
            <input type="button" onclick="check(3)" value="REPEAT"/>
        </div>
 <div>      
        <div id="containner3">
        <form class="violation" action="checkrepeatoffender")>
        <label>Violation Name :</label>
                    <input type="text" name="viname" placeholder="violation name"/></br>
                <label>vehicle Number:</label>
                    <input type="text" name="veno" placeholder="vehicle number"/></br>
                    <input type="submit" value="SUBMIT"/>
            </form>
        </div>
        <% String val=(String)session.getAttribute("res");
        String ty1=(String)session.getAttribute("ty1");
        String ty2=(String)session.getAttribute("ty2");
        if(val=="1"){%>
        <div id="containner1">
             <h2>Repeated Offender Noted</h2>  
            <form class="violation" action="insert" method="post">
                <label>Violator Name :</label>
                    <input type="text" name="violationname" placeholder="Name" value=<%=ty1%> disabled/></br>
                <label>Violation Type :</label>
                    <input type="text" name="violationtype" placeholder="Violation Type"/></br>
                <label>Driving License No :</label>
                    <input type="text" name="drivinglicenseno" placeholder="License Number"/></br>
                <label>Vehicle Number :</label>
                    <input type="text" name="vehiclenumber" placeholder="Vehicle Number" value=<%=ty2%> disabled/></br>
                <label>Location :</label>
                    <input type="text" name="location" placeholder="Location"/></br>
                <label>Repeated Offender :</label>
                    <input type="radio"  name="checker" value="yes" /><b>Yes</b>
                    <input type="radio"  name="checker" value="no" /> <b>No</b></br>
                <label>Date :</label>
                    <input type="date" name="dat" placeholder="Date"/></br>
                <label>Fine :</label>
                    <input type="text" name="tim" placeholder="Fine"/></br></br></br>
                    <input type="button" onclick="location.href='IssueTicket.jsp' "value="Pay"/>
                <input type="submit" value="SUBMIT"/>
            </form>
        </div>
        <%} else if(val=="0") { %>
        <div id="containner1">
           <h3>Not A RepeatOffender</h3>
               <form class="violation" action="insert" method="post">
                <label>Violator Name :</label>
                    <input type="text" name="violationname" placeholder="Name" value=<%=ty1%> disabled/></br>
                <label>Violation Type :</label>
                    <input type="text" name="violationtype" placeholder="Violation Type"/></br>
                <label>Driving License No :</label>
                    <input type="text" name="drivinglicenseno" placeholder="License Number"/></br>
                <label>Vehicle Number :</label>
                    <input type="text" name="vehiclenumber" placeholder="Vehicle Number" value=<%=ty2%> disabled/></br>
                <label>Location :</label>
                    <input type="text" name="location" placeholder="Location"/></br>
                <label>Repeated Offender :</label>
                    <input type="radio"  name="checker" value="yes" /><b>Yes</b>
                    <input type="radio"  name="checker" value="no" /> <b>No</b></br>
                <label>Date :</label>
                    <input type="date" name="dat" placeholder="Date"/></br>
                <label>Fine :</label>
                    <input type="text" name="tim" placeholder="Fine"/></br>
                    <input type="button" onclick="location.href='IssueTicket.jsp'"value="Pay"/>'
                <input type="submit" value="SUBMIT"/>
            </form>
        </div>
        <%}
        else if(val=="none" || val=="start"){ %>
        <div id="containner1">
           <h2>!! Before Entering Details You Must Validate The Offender is Repeated or New.
            Lets Start to Click ---->REPEAT<----- to Check!!</h2>
           </div>
        <%}
        else if(val=="failed"){ %>
        <div id="containner1">
           <h2>Previously Entered data is not registered.please try to register again by clicking Repeat Colounm</h2>
         </div>
        <%} %>
        <div id="containner2">
        <form class="violation" method="post" action="Insertaccident">
                <label>Location :</label>
                    <input type="text" name="location" placeholder="location"/></br>
                <label>Number of People :</label>
                    <input type="text" name="noofpeo" placeholder="count"/></br>
                <label>Type of Accident:</label>
                    <input type="text" name="toa" placeholder="accident"/></br>
                <label>Date :</label>
                    <input type="date" name="date" placeholder="Date"/></br>
                <label>Time :</label>
                    <input type="time" name="time" placeholder="Time"/></br>
                <input type="submit" value="SUBMIT"/>
            </form>
         </div>
         <div id="containner4">
         <form class="sos" action="insertsosRequest" method="post">
          <h1>REQUEST SOS</h1><br>
          <label>Village:</label>
                    <input type="text" name="village" placeholder="village"/></br>
                <label>City :</label>
                    <input type="text" name="city" placeholder="city"/></br>
                <label>PIN CODE :</label>
                    <input type="text" name="pincode" placeholder="pin code"/></br>
                <input type="submit" value="REQUEST"/>
         
         </form>      
         
      </div>
         
    </div>
    
</body>
</html>