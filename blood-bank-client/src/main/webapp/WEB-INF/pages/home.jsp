<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.head {
  background-color: #bb0a0a;
  width:1366px;
  height:60px;
  
}
#menubar {
  overflow: hidden;
  background-color: rgb(57, 49, 131);
}
#menubar a {
  
  padding: 14px 16px;
  float: left;
  display: block;
  color: #a8adbe;
  text-align: center;
  font-size: 17px;
}
#menubar a:hover {
  background-color: rgb(167, 210, 235);
  color: rgb(90, 11, 11);
}
#menubar a.active {
  background-color: #81a8e4;
  color: rgb(102, 8, 8);
  
}
body {
  margin: 0;
  font-size: 28px;
  font-family: Arial, Helvetica, sans-serif;
}

</style>
<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
</head>
<body>

<div class="head">
   
        <h1 style="text-align: center; color: rgb(228, 192, 192); ">JEEVAN BLOOD BANK</h1>
    </div>
    <div style="height: 300px; background-color: #df3740;">
        <img src="bloodbank.jpg" width="600" height="220" style="position: absolute;right: 50%; top: 26%;">
        <img src="blooddonor.jpg" width="600" height="220" style="position: absolute;right: 4%; top: 26%;">
    </div>
   
    

<div id="menubar">
  
  <a class="active" href="javascript:void(0)">HOME</a>
  <a href="/register/"><B>REGISTRATION</B></a>
  <a href="/getAllCamps/">BLOOD DONATION CAMPS</a>
  <a href="/searchBlood/">NEED BLOOD?</a>
  <a href="/getDonors/">DONORS</a>
  <a href="">ELIGIBLE DONORS</a>
 
</div>



</body>
</html>