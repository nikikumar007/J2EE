<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Camps</title>


<style>
#findAllCamps{

font-size: large;
color: crimson;

    }
#findByCity{

font-size: large;
color: crimson;

    }
#camp {
 

  width: 100%;
}
#camp td, #camp th {
  border: 1px solid blue;
  padding: 8px;
}

#camp th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: blue;
  color: white;
}
</style>

<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
  

<script type="text/javascript">
   $(document).ready(function(){
	  $('#findAllCamps').click(function() {
           var campTable="<table id=\"camp\" style=\"font-size: large;width: 840px; margin-left: 115px;\"><tr>"
            "<th>Id</th>"+
            "<th>Name</th>"+
            "<th>CampDate</th>"+
            "<th>city</th>"+
           "</tr>";
		   var urlval="http://localhost:2020/donation-camp-service/campservice/";
			$.ajax({
				type : 'GET',
				url :urlval,
				dataType : 'json',
				contentType : 'application/json',
				success : function(camps) {
					
					$.each(camps, function(key,value) {
                    campTable+="<tr><td>"+value.id+"</td>"+
                        "<td>"+value.name+"</td>"+
                        "<td>"+value.campDate+"</td>"+
                        "<td>"+value.city+"</td>"+
                         "</tr>";
					
					});
					campTable+="</table><br>";
					$('#showCamps').html(campTable);
				}
			});
        });
        $('#findByCity').click(function() {
           var campTable="<table id=\"camp\" style=\"font-size: large;width: 840px; margin-left: 115px;\"><tr>"
            "<th>Id</th>"+
            "<th>Name</th>"+
           
            "<th>CampDate</th>"+
           "<th>city</th>"+
          "</tr>";
		   var urlval="http://localhost:2020/donation-camp-service/campservice/findCity/"+$("#campLocation").val();
			$.ajax({
				type : 'GET',
				url :urlval,
				dataType : 'json',
				contentType : 'application/json',
			
				success : 
					
					function(campByCity) {
				        
                    campTable+="<tr><td>"+campByCity.id+"</td>"+
                        "<td>"+campByCity.name+"</td>"+
                       "<td>"+campByCity.campDate+"</td>"+
                       "<td>"+campByCity.city+"</td>"+
                        "</tr>";
					
					
					campTable+="</table><br>"
					$('#showCamps1').html(campTable);
				}
			});
		});
        $('#findById').click(function() {
            var campTable="<table id=\"camp\" style=\"font-size: large;width: 840px; margin-left: 115px;\"><tr>"
             "<th>slno</th>"+
             "<th>Camp Id</th>"+
              "<th>Donor Id</th>"+
           
           "</tr>";
 		   var urlval="http://localhost:2020/donation-camp-service/campregistry/"+$("#campId").val();
 			$.ajax({
 				type : 'GET',
 				url :urlval,
 				dataType : 'json',
 				contentType : 'application/json',
 				success : function(campById) {
 					$.each(campById, function(key,value) {
                     campTable+="<tr><td>"+value.slno+"</td>"+
                         "<td>"+value.campId+"</td>"+
                        "<td>"+value.donorId+"</td>"+
                         "</tr>";
 					
 					
 					campTable+="</table><br>"
 					$('#showCamps2').html(campTable);
 				}
 			});
 		});
 	
	
	   
	  
   });
   </script>
</head>
<body>

<br>
<div >
   
<form name="" method="post">
    <input type="button" value="Get All the camp details" id="findAllCamps">
</form>
<br>
<div id="showCamps" style="text-align: center;"></div>
</div>
<div >
<form name="" method="post">
  <p style="font-size:large;">Enter your location</p>
    <input type="text" name="campLocation" id="campLocation" value="">
    <input type="button" value="Search" id="findByCity">
</form>
<div id="showCamps1" style="text-align: center;"></div>
<form name="" method="post">
  <p style="font-size:large;">Get all donors registered for a perticular camp</p>
    <input type="text" name="campId" id="campId" placeHolder="Enter camp Id">
    <input type="button" value="Search" id="findById">
</form>
<div id="showCamps2" style="text-align: center;"></div>
</div>


</body>
</html>