<!DOCTYPE html>
<%@include file = "userHeader.html" %>
<%@include file="breadcrumbs.html"%>

<html>
<head>
<title>User: Contribute Money</title>
        <meta charset="UTF-8">
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css\stylecontribute.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>


.nav > ul > li:nth-child(6)
{
color: white;
background-color: black;
}
body{
 background-color: #fea49f;
}
</style>
</head>
<body>

</div>
<div class="sharecircle" onclick="share()">
<i class="fa fa-share-alt" aria-hidden="true"></i>
</div>
<div class="sharecircle facebook" id="f">
<i class="fa fa-facebook" aria-hidden="true"></i>
</div>
<div class="sharecircle instagram" id="i">
<i class="fa fa-instagram" aria-hidden="true"></i>
</div>
<div class="sharecircle youtube" id="y">
<i class="fa fa-youtube-play" aria-hidden="true"></i>
</div>
<div class="sharecircle gmail" id="g">
<i class="fa fa-envelope" aria-hidden="true"></i>
</div>
<div class="center">
</div>

<div class="container">
<form action="contributeAction.jsp" method="post" id="myform">
<div class="login">
<h3>How Much Would you like to Donate ?</h3>
<div class="circle circle1">
<i onclick="f1()">$100</i>
</div>
<div class="circle circle2">
<i onclick="f2()">$500</i>
</div>
<div class="circle circle3">
<i onclick="f3()">$1000</i>
</div>
<div class="circle circle4">
<i onclick="f4()">$2000</i>
</div>
<div class="circle circle5">
<i onclick="f5()">$5000</i>
</div>
<h4>OR</h4>
<input type="number" name="amount1" id="ir" placeholder="Enter Amount" onkeyup="l()" required autocomplete="off">
</div>
<div class="contact">
<h3>
<font color = "black">Receipt Details</h3>
<table>
<tr>
<td>
<label>
<font color = "black">Full Name:-</label>
<input type="text" name="name" id="fname" required pattern="[A-z ]+$" title="Use only character & whitespace" autocomplete="off">
</td>
<td rowspan="2">
<label>
<font color = "black">Address(Optional):-</label>
<textarea style="background-color: #silver;" name="address" placeholder="---Type---" ></textarea>
</td>
</tr>
<tr>
<td>
<label>
<font color = "black">Email Id:-</label>
<input type="email" name="email" title="Email id is not Valid" autocomplete="off">
</td>
</tr>
<tr>
<td>
<label>
<font color = "black">Mobile Number:-</label>
<input type="text" name="contactnumber"  title="Number is not valid" autocomplete="off">
</td>
<td>
</td>
</tr>
<tr>
<td>
<label>
<font color = "black">City(Optional):-</label>
<input type="text" name="city" pattern="[A-z]+$" title="Use only character" autocomplete="off">
</td>
<td>
<label>
<font color = "black">State(Optional):-</label>
<input type="text" name="state"pattern="[A-z]+$" title="Use only character" autocomplete="off">
</td>
</tr>
<tr>

<td  class="lasttd">

<span class="btn"><input type="submit" name="submit" value="Process To Pay"></span>
</td>

</tr>
</table>
</div>
</form>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/additional-methods.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
jQuery.validator.addMethod("checkemail", function(value, element) {
  // allow any non-whitespace characters as the host part
  return this.optional( element ) || /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i.test( value );
}, 'Please enter a valid email address.');


$(document).ready(function () {

    $('#myform').validate({
        rules: {
            fname: {
                required: true,
              lettersonly:true,
                whitespace:true,
            },
       
        },
        messages:{
        fname:{
        required:"firstname is required",
        lettersonly:"enter letters only",
        },
        },
    });

});
</script>

</body>
<script type="text/javascript">
function l()
{
var x=document.getElementById('ir');
var y=document.getElementById('ir1');
document.getElementById('cr').value=x.value;
document.getElementById('cr1').value=y.value;
}
function f1()
{
document.getElementById('ir').value=100;
document.getElementById('cr').value=100;
document.getElementById('ir1').value=100;
document.getElementById('cr1').value=100;
}
function f2()
{
document.getElementById('ir').value=500;
document.getElementById('cr').value=500;
document.getElementById('ir1').value=500;
document.getElementById('cr1').value=500;
}
function f3()
{
document.getElementById('ir').value=1000;
document.getElementById('cr').value=1000;
document.getElementById('ir1').value=1000;
document.getElementById('cr1').value=1000;
}
function f4()
{
document.getElementById('ir').value=2000;
document.getElementById('cr').value=2000;
document.getElementById('ir1').value=2000;
document.getElementById('cr1').value=2000;
}
function f5()
{
document.getElementById('ir').value=5000;
document.getElementById('cr').value=5000;
document.getElementById('ir1').value=5000;
document.getElementById('cr1').value=5000;
}
function share()
{
var a =document.getElementById("f");
var b=document.getElementById("g");
var c=document.getElementById("i");
var d=document.getElementById("y");
if (a.style.display === "none")
{
a.style.display="block";
b.style.display="block";
c.style.display="block";
d.style.display="block";
}
else
{
a.style.display="none";
b.style.display="none";
c.style.display="none";
d.style.display="none";
}
}
</script>
</html>
