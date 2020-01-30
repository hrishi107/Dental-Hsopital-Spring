<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!Doctype html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Login Form</title>
     	<meta name="viewport" content="width=device-width, initial-scale=1">
     	<link rel="stylesheet" type="text/css" href="loginnew.css">
     		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
			<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
			<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<style>
			body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
			.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
			.fa-anchor,.fa-coffee {font-size:200px}
			</style>
			<style>/*-----Background-----*/

body{
	 background-image:url(https://img.freepik.com/free-photo/3d-grunge-room-interior-with-spotlight-smoky-atmosphere-background_1048-11333.jpg?size=626&ext=jpg);
	 background-repeat:no-repeat;
	 background-size:cover;
	 width:100%;
	 height:100vh;
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
     margin-top: 67px;
   box-shadow: 2px 5px 5px 0px #eee;
     max-width: 500px;
     padding-top: 10px;
     height: 250px;
     margin-top: 166px;
}


.username{
	 margin-left: 1px;
     font-family: sans-serif;
     font-size: 14px;
     color: white;
     margin-top: 5px;
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
</head>
<body>

<div class="w3-top">
  <div class="w3-bar w3-black w3-card w3-left-align ">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="home.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Dentists</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Services</a>
    <a href="RegisterP.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Register</a>
  </div>
</div>
<form action="login" method="post">
 <div class="container">
 <!---heading---->
     <header class="heading"> Login</header><hr></hr>
	<!---Form starting----> 
	<div class="row ">
	 <!--- For Name---->
         <div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="username" >User Name :</label> </div>
		         <div class="col-xs-8">
		            <div class="form-group" style="width:40vh;" ><input class="form-control" type="text" name="UserName" placeholder="Username">
             </div>
		      </div>
		 </div>
		 
		 
           <div class="col-sm-12">
		         <div class="row">
				     <div class="col-xs-4">
		 	              <label class="pass" >Password :</label></div>
				  <div class="col-xs-8">
			             <div class="form-group" style="width:40vh;" ><input	class="form-control"  type="password" name="Password" placeholder="Password"></div>
				 </div>
          </div>
		  </div>
		  
     		  	 
		     <div class="col-sm-12" style="margin-top: 15px">
		         <input class="btn btn-danger mr-5" type="submit" value="Login"><a href="RegisterP.jsp">Register</a> 
		   </div>
		 </div>
	 </div>	 
		
		 
</div>

</form>
</body>		
</html>
	 
	 