<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Traffic Cop Team Login Form</title>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js">
    </script>
     <style>
         *{
           margin:2px;
    }
    body{
    background-color: #1A6E88;
    }
.box{
  width: 300px;
  background-color:white;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  /*background: #191919;*/
  text-align: center;
}
.box h1{
  color: Black;
  text-transform: uppercase;
  font-size:30px;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #1A6E88;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color: black;
  font-size: 15px;
  border-radius: 24px;
  transition: 0.25s;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width: 280px;
}
.box input[type = "submit"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #1A6E88;
  padding: 14px 40px;
  outline: none;
  color: black;
  font-size: 18px;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type = "submit"]:hover{
  background: #1A6E88;
  color: white;
}
    </style>
  </head>
  <body>
<form class="box" action="plogin" method="post">
  <center>
    <lottie-player src="https://assets2.lottiefiles.com/datafiles/bzaUVj3XQpz2oA9/data.json"  background="transparent"  speed="1"  style="width: 200px; height: 150px;"  loop  autoplay></lottie-player>
  </center>
  <h1>Traffic Cop Login</h1>
  <input type="text" name="puserid" placeholder="Login Id" maxlength="6" minlength="6">
  <input type="password" name="ppassword" placeholder="Password" maxlength="6" minlength="6">
  <input type="submit" value="Login">
</form>
 
 
  </body>
</html>
