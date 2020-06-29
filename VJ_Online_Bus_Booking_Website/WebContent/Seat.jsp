<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script>
function selectedseats() 
{
	var selected = new Array();
    var seat = document.getElementsByName("seat");
    // Loop and push the checked CheckBox value in Array.
    for (var i = 0; i < seat.length; i++) {
        if (seat[i].checked) {
            selected.push(seat[i].value);
        }
    }

    //Display the selected CheckBox values.
    if (selected.length > 0) {
        alert("Your selected seats numbers are: " + selected.join(","));
    }
    else{
    	alert("You didn't select anyone of seats! Can you please select atleast one seat");
    }
}
</script>
</head>
<style>
body{
background: url("images/tr1.jpg");
background-repeat:no-repeat;
backgroud-size:100% 100%;
background-color:red;
text-align:center;
}
h1{
margin-top:5%;
color: white;
}
input[type=submit]{
  background-color: white;
  border:thin solid black;
  color: black;
  padding: 8px 14px;
  text-decoration: none;
  margin: 4px 14px;
  cursor: pointer;
}
input[type=button]{
  background-color: white;
  border:thin solid black;
  color: black;
  padding: 8px 16px;
  text-decoration: none;
  margin: 4px 25px;
  cursor: pointer;
}
img{
width:30px;
height:30px;
}
li{
list-style-type:none;
}
.border
{
  border: 2px solid red;
  padding: 25px;
  border-radius: 10px;
  background-color:white;
  color:Black;
  margin-left:30%;
  margin-right:30%;
}
.left{
text-align:center;
width:25%;
float:left;
margin-top:6%;
margin-left:25%; 
margin-bottom:6%;
}
.right{
text-align:center;
width:25%;
float:left;
margin-top:6%;
margin-right:25%;
margin-bottom:6%;
}
input[type=checkbox] {
  display: none;
}
:checked + label {
  content: url("images/selectedseats.png");
}
</style>
<% 
String val[] = request.getParameter("val").split("@");
HttpSession ses = request.getSession();
session.setAttribute("de",val[0]); 
session.setAttribute("ds",val[1]); 
session.setAttribute("da",val[2]); 
session.setAttribute("ti",val[3]); 
session.setAttribute("ca",val[4]); 
session.setAttribute("co",val[5]); 
%>
<body>
<form action="Booking.jsp">
<h1>Please Select Your Seats</h1>
<div class="border">
<div class="left">
<li>
<input type="checkbox" id="01" name="seat" value="01"/>
<label for="01"><img src="images/availableseat.png"></label>
<input type="checkbox" id="02" name="seat" value="02">
<label for="02"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="05" name="seat" value="05">
<label for="05"><img src="images/availableseat.png"></label>
<input type="checkbox" id="06" name="seat" value="06">
<label for="06"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="09" name="seat" value="09">
<label for="09"><img src="images/availableseat.png"></label>
<input type="checkbox" id="10" name="seat" value="10">
<label for="10"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="13" name="seat" value="13">
<label for="13"><img src="images/availableseat.png"></label>
<input type="checkbox" id="14" name="seat" value="14">
<label for="14"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="17" name="seat" value="17">
<label for="17"><img src="images/availableseat.png"></label>
<input type="checkbox" id="18" name="seat" value="18">
<label for="18"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="21" name="seat" value="21">
<label for="21"><img src="images/availableseat.png"></label>
<input type="checkbox" id="22" name="seat" value="22">
<label for="22"><img src="images/availableseat.png"></label>
</li>
</div>
<div class="right">
<li>
<input type="checkbox" id="03" name="seat" value="03">
<label for="03"><img src="images/availableseat.png" ></label>
<input type="checkbox" id="04" name="seat" value="04">
<label for="04"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="07" name="seat" value="07">
<label for="07"><img src="images/availableseat.png"></label>
<input type="checkbox" id="08" name="seat" value="08">
<label for="08"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="11" name="seat" value="11">
<label for="11"><img src="images/availableseat.png"></label>
<input type="checkbox" id="12" name="seat" value="12">
<label for="12"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="15" name="seat" value="15">
<label for="15"><img src="images/availableseat.png"></label>
<input type="checkbox" id="16" name="seat" value="16">
<label for="16"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="19" name="seat" value="19">
<label for="19"><img src="images/availableseat.png"></label>
<input type="checkbox" id="20" name="seat" value="20">
<label for="20"><img src="images/availableseat.png"></label>
</li>
<li>
<input type="checkbox" id="23" name="seat" value="23">
<label for="23"><img src="images/availableseat.png"></label>
<input type="checkbox" id="24" name="seat" value="24">
<label for="24"><img src="images/availableseat.png"></label>
</li>
</div>
<div>
<input type="button" onclick="location.href='http://localhost:8080/VJ_TRAVELS/view.jsp';" value="Back" />
<input type="submit" value="Submit" onclick="selectedseats()">
</div>
</div>
</form>
</body>
</html>