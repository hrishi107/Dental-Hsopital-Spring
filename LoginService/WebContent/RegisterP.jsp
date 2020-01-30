
<!Doctype html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<style >
		/*-----Background-----*/

body{
	 background-image:url(https://img.freepik.com/free-photo/3d-grunge-room-interior-with-spotlight-smoky-atmosphere-background_1048-11333.jpg?size=626&ext=jpg);
	 background-repeat:no-repeat;
	 background-size:100% 100%;
	 width:100%;
	 height:100%;
	 overflow:auto;
	 
}

/*-----for border----*/
.container{
	font-family:Roboto,sans-serif;
	  background-image:url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg) ;
    
     border-style: 1px solid grey;
     margin: 0 auto;
     text-align: center;
     opacity: 0.8;
     margin-top: 100px;
   box-shadow: 2px 5px 5px 0px #eee;
     max-width: 600px;
     padding-top: 10px;
     height: 590px;
     margin-top: 20px;
}
/*--- for label of first and last name---*/
.lastname{
	 margin-left: 1px;
     font-family: sans-serif;
     font-size: 14px;
     color: white;
     margin-top: 5px;
}
.firstname{
	 margin-left: 1px;
     font-family: sans-serif;
     font-size: 14px;
     color: white;
     margin-top: 5px;
}
.default{
	 margin-left: 1px;
     font-family: sans-serif;
     font-size: 14px;
     color: black;
     margin-top: 5px;
}
.def{
	 margin-left: 1px;
     font-family: sans-serif;
     font-size: 14px;
     color: white;
     margin-top: 3px;
}


#lname{
	 margin-top:5px;
}
	  

/*---for heading-----*/
.heading{
	 text-decoration:bold;
	 text-align : center;
	 font-size:30px;
	 color:#F96;
	 padding-top:10px;
}
/*-------for email----------*/
  /*------label----*/
#email{
	  margin-top: 5px;
}
/*-----------for Password--------*/
     /*-------label-----*/
.mail{
	 margin-left: 44px;
     font-family: sans-serif;
     color: white;
     font-size: 14px;
     margin-top: 13px;
}
.pass{
	 color: white;
     margin-top: 9px;
     font-size: 14px;
     font-family: sans-serif;
     margin-left: 6px;
     margin-top: 9px;
}
#password{
 margin-top: 6px;
}
/*------------for phone Number--------*/
      /*----------label--------*/
.pno{
	 font-size: 18px;
     margin-left: -13px;
     margin-top: 10px;
     color: #ff9;
	
}	

/*--------------for Gender---------------*/
     /*--------------label---------*/
.gender {
	 color: white;
     font-family: sans-serif;
     font-size: 14px;
     margin-left: 28px;
     margin-top: 8px;
}

     /*---------- for Input type--------*/
.col-xs-4.male{
	 color: white;
     font-size: 13px;
     margin-top: 5px;
     padding-bottom: 16px;
}
.col-xs-4.female {
     color: white;
     font-size: 13px;
     margin-top: 5px;
     padding-bottom: 16px;
	 padding-right: 95px;
}	
/*------------For submit button---------*/
.sbutton{
	 color: white;
     font-size: 20px;
     border: 1px solid white;
     background-color: #080808;
     width: 32%;
     margin-left: 41%;
     margin-top: 16px;
	 box-shadow: 0px 2px 2px 0px white;
  	   
   }
.btn.btn-warning:hover {
    box-shadow: 2px 1px 2px 3px #99ccff;
	background:#5900a6;
	color:#fff;
	transition: background-color 1.15s ease-in-out,border-color 1.15s ease-in-out,box-shadow 1.15s ease-in-out;
	
}	 
	  </style>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <meta charset="UTF-8">
     <title>Registration Form</title>
     	<meta name="viewport" content="width=device-width, initial-scale=1">
     	
     	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
			<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
			<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<style>
			body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
			.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
			.fa-anchor,.fa-coffee {font-size:200px}
			</style>
		
     	
</head>
<body>

<div class="w3-top">
  <div class="w3-bar w3-black w3-card w3-left-align ">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="home.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Dentists</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Services</a>
    <a href="Index.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Login</a>
  </div>

</div>
<form action="regisp" method="post">
 <div class="container">
 <!---heading---->
     <header class="heading"> Registration-Form</header><hr></hr>
	<!---Form starting----> 
	<div class="row ">
	 <!--- For Name---->
         <div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="firstname">First Name :</label> </div>
		         <div class="col-xs-8">
		             <input type="text" name="FirstName" id="fname" placeholder="Enter your First Name" class="form-control ">
		             <span id="nameerror" class="text-danger font-weight-bold"></span>
             </div>
		      </div>
		 </div>
		 
		 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="lastname">Last Name :</label></div>
				<div class ="col-xs-8">	 
		             <input type="text" name="LastName" id="lname" placeholder="Enter your Last Name" class="form-control last">
		               <span id="lnameerror" class="text-danger font-weight-bold"></span>
                </div>
		     </div>
		 </div>
		 <div class="col-sm-12">
		     <div class ="row">
                 <div class="col-xs-4 btn btn">
			       <label class="gender">Designation:</label>
				 </div>
			 
			     <div class="col-xs-4 male btn btn">	 
				     <input type="radio" name="Designation"  id="gender" value="P">Patient</input>
				 </div>
				 
				 <div class="col-xs-4 female btn btn">
				     <input type="radio"  name="Designation" id="gender" value="D" >Doctor</input>
			     </div>
			
		  	 </div>
		 
		 <div class="col-sm-12">
		     <div class ="row">
                 <div class="col-xs-4 btn btn">
			       <label class="gender">Gender:</label>
				 </div>
			 
			     <div class="col-xs-4 male btn btn">	 
				     <input type="radio" name="Gender"  id="gender" value="boy">Male</input>
				 </div>
				 
				 <div class="col-xs-4 female btn btn">
				     <input type="radio"  name="Gender" id="gender" value="girl" >Female</input>
			     </div>
			
		  	 </div>
		
		 
     <!-----For email---->
		 <div class="col-sm-12" style="margin-top: 5px">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail"  style="margin-top: 2px">Email :</label></div>
			     <div class="col-xs-8">	 
			          <input type="email" name="Email"  id="email"placeholder="Enter your email" class="form-control"  required="required"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="8 or more character" >
		         </div>
		     </div>
		 </div>
		 
	  
		 
	<div class="col-sm-12" style="margin-top: 5px">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="def">Address :</label></div>
				<div class ="col-xs-8">	 
		             <input type="text" name="Address" id="address" placeholder="Enter your Address" class="form-control last">
                </div>
		     </div>
		 </div>	 
		 
	<div class="col-sm-12" style="margin-top: 5px">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="lastname">Phone No. :</label></div>
				<div class ="col-xs-8">	 
		             <input type="text" name="PhoneNo" id="phoneno" placeholder="Enter your Phone No." pattern="^[+][91]{2}[6-9]\d{9}$" value="+91" title="plaease enter valid number" autocomplete="off" class="form-control last">
		              <span id="phoneerror" class="text-danger font-weight-bold"></span>
                </div>
		     </div>
		 </div>
		 
		
	 
	 <!-----For Password and confirm password---->
          <div class="col-sm-12" style="margin-top: 5px">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="lastname">Password :</label></div>
				<div class ="col-xs-8">	 
		             <input type="password" name="Password" id="pass" placeholder="Enter your Password" class="form-control last" pattern="/^(?=.*[0-9](?=.*[!@#%^&*$])[a-zA-Z0-9!@#$%^&*]{8,16}$/">
		              <span id="passerror" class="text-danger font-weight-bold"></span>
                </div>
		     </div>
		 </div>
	
		  
		  <div class="col-sm-12" style="margin-top: 5px">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="lastname">Confirm Password :</label></div>
				<div class ="col-xs-8">	 
		             <input type="password" name="Cpassword" id="cpass" placeholder="Re-Enter your Password" class="form-control last">
		             <span id="conpasserror" class="text-danger font-weight-bold"></span>
                </div>
		     </div>
		 </div>
		  
     <div class="col-sm-12" style="margin-top: 5px">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="lastname">Age :</label></div>
				<div class ="col-xs-8">	 
		             <input type="text" name="age" id="Age" placeholder="Enter your Age" class="form-control last">
                </div>
		     </div>
		 </div>
		
              <div class="col-sm-12" style="margin-top: 7px" >
		     <input class="btn btn-danger mr-5" type="submit" value="Register">    Register</div>
		   </div>
		 </div>
	 </div>	 
		 		 
		 

</form>
<script >
	function validation()
	{
		
		var firstname=document.getElementById('FirstName').value;
		var lastname=document.getElementById('LastName').value;
		var mobilenumber=document.getElementById('PhoneNo').value;
		var password=document.getElementById('pass').value;
		var cpassword=document.getElementById('cpass').value;
		
		var usercheck=/^[A-Za-z. ]{8,15}$/;
		var passcheck=/^(?=.*[0-9](?=.*[!@#%^&*$])[a-zA-Z0-9!@#$%^&*]{8,16}$/;
		var mobilecheck=/^[789]{1}[0-9]{9}$/;
		
		if(usercheck.test(firstname))
			{
				document.getElementById('nameerror').innerHTML="";
			}
		else
			{
				document.getElementById('nameerror').innerHTML="** FirstName is Invalid";
				return false;
			}
		
		if(usercheck.test(lastname))
		{
			document.getElementById('lnameerror').innerHTML="";
		}
	else
		{
			document.getElementById('lnameerror').innerHTML="** LastName is Invalid";
			return false;
		}
		
		if(mobilecheck.test(mobilenumber))
		{
			document.getElementById('phoneerror').innerHTML="";
		}
	else
		{
			document.getElementById('phoneerror').innerHTML="** Mobileno is Invalid";
			return false;
		}
		
		
		if(passcheck.test(password))
		{
			document.getElementById('passerror').innerHTML="";
		}
	else
		{
			document.getElementById('passerror').innerHTML="** Password Invalid";
			return false;
		}
		
		if(password.match(cpassword))
			{
			document.getElementById('conpasserror').innerHTML="";
			}
		else
			{
				document.getElementById('conpasserror').innerHTML="** Password does not match";
				return false;
			}
			
		
	}
</script>
</body>		
</html>
	 
	 