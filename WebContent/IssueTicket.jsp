<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: black;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

        body{
            font-family: 'Inconsolata', monospace;
        }
        .outer h1{
             margin-top:0%;
            font-weight: 20%;
            padding-left:2%;
            border:1px solid transparent;
            background-color: #1A6E88;
            height:80px;
            padding-top:3%;
            box-shadow: 2px 2px 20px #000;
            color:white;
        }
        .outer h1 a{
            text-decoration: none;
            color:navy;
        }

        label{
            font-size:25px;
        }
        .violation input[type="text"]{
            border:0;
            background: none;
            text-align: center;
            margin:0px 0px 15px 10px;
            border: 2px solid #999999;
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
            border: 3px solid teal;
            transition:2s;
        }
        #containner1{
            position:relative;
            margin:5% 10% 10% 10%;
            border:2px solid black;
            width:500px;
            height:500px;
            border-radius:5px;
            transition:40s;
            float: left;
            background-color: lightgrey;
        }
        #pay,#myBtn{
            float: right;
            border: 2px solid black;
            background-color: yellow;
            color: blue;
           padding: 1% 2% 1% 2%;
            border-radius: 5px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: bolder;
            cursor: pointer;
            box-shadow: 2px 2px 20px black;
            transition: 2s;
            appearance: push-button;
        }
        #pay:hover {
            transition: 2s;
        }
        #containner1 .violation{
            margin:10% 0% 0% 12%;
        }
       
        .button{
            margin-top:7%;
            margin-left:32%;
        }
        .button >input[type="button"]{
            letter-spacing: 1px;
            margin-left:30px;
            padding:15px;
            width:20%;
            border:3px solid transparent;
            background-color: navy;
            color:turquoise;
            border-radius: 20px;
            font-size:20px;
            font-weight: bold;
            cursor:pointer;
            box-shadow: 2px 2px 20px #000;
            transition: 2s;
        }
        .button >input[type="button"]:hover{
            border-color:transparent;
            color:navy;
            width:24%;
            background-color: turquoise;
            transition:1s;
        }
        #containner1 .violation >input[type="button"]{
            margin:0% 29%;
            border:3px solid blue;
            width:140px;
            padding:10px;
            font-size:25px;
            font-weight: bold;
            border-radius: 20px;
            cursor:pointer;
            transition: 1s;
            box-shadow:4px 4px 10px black;
        }
        #upiTd {
            border: 3px solid black;
            font-weight: bolder;
            margin: auto;
        }
       
        input[type="submit"]:hover{
            color:blue;
        } 
    </style> 
</head>
<body>
<% 		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
	
	%>
    <div class="outer">
        <h1 style="padding-left:40%">VIOLATION DETAILS</h1>
        <div id="containner1" style="display:block">
            <form class="violation" >
                <label>Ticket No :</label>
                    ${ticketNo} <br>
                <label>Violator's Name :</label>
                    ${name} <br>
                <label>Violation Type :</label>
                    ${type} <br>
                <label>Driving License No :</label>
                    ${license}<br>
                <label >Vehicle Number :</label>
                    ${number} <br>
                <label>Location :</label>
                    ${location}<br>
                <label>Date :</label>
                    ${date}</br>
                <label>Time :</label>
                    ${time}</br></br></br>
                <label>Fine amount :</label>
                    ${fineAmount}</br></br></br>
                   
            </form>
        </div>
        
        <br><br>
        <form style="margin:5% 10% 10% 10%">
        	<h2>Fine Paid Status:</h2>
        	<p id="info" style="color:red;font-size:200%;font-weight:bold" >NOT PAID</p>
            <button type="button" id="myBtn" style="margin-right:20%;margin-bottom:3%" >PAY FINE</button>
                <div id="myModal" class="modal">
                <div class="modal-content">
                <span class="close">&times;</span>
                <h1 style="color:white">PAY USING UPI--    SCAN below</h1>
                <h2 id="upiId">UPI ID:- <pre>police@upi</pre></h2>
                <img src="barcode.jpg" alt="USE the UPI id">
        </form>
        <form id="finePaidOrNot" action="NoFineUpdate"  method="post" style="margin:5% 10% 10% 10%">
        	<button type="submit" id="pay" style="margin-right:20%;color:blue">UPDATE</button>
        </form>
        </br></br></br>
    </div>
 
</body>
	<script>
        	
        var modal = document.getElementById("myModal");

// Get the button that opens the modal
        var btn = document.getElementById("myBtn");
        var x = document.getElementById("info");
// Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
        btn.onclick = function() {
            modal.style.display = "block";
           
        }

// When the user clicks on <span> (x), close the modal
        span.onclick = function() {
           //alert(document.getElementById("finePaidOrNot").action);
            modal.style.display = "none";
            //x.name="paid";
			x.innerHTML="PAID";
			x.style.color="green";
			document.getElementById("finePaidOrNot").action="FineUpdate";
            //alert(document.getElementById("finePaidOrNot").action);
        }

// When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
	
	</script>
</html>

