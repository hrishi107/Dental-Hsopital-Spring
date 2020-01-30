<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient  History </title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
	<body>
	
	<div class="row" style="height: 100px; background-color: lightgrey; padding-left: 40px; padding-top: 15px">
	<h2>Patient Details</h2>
	</div>
	
		<table class="table table-hover">
	
	    	<thead>
	    	
	     	 <tr>
		        <th>First Name</th>
		        <th>Last Name</th>
		        <th>Email</th>
		        <th>Phone No</th>
		        <th>Address</th>
		        <th>Designation</th>
		        
		      </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="user" items="${user}">
		     <tr>
		         <th>${user.getFirstName()}</th>
		        <th>${user.getLastName()}</th>
		        <th>${user.getEmail()}</th>
		        <th>${user.getPhoneNo()}</th>
		        <th>${user.getAddress()}</th>
		        <th>${user.getDesignation()}</th>
		        
		        <td><form action="update" method="post">
		        <input type="hidden" name="userId" value="${user.getUserId()}">
		        <input class="btn btn" type="submit" value="Update">
		        </form></td>
		        <td>
		        	<form action="delete" method="post">
		        		<input type="hidden" name="userId" value="${user.getUserId()}">
 		       		 <input class="btn btn" type="submit" value="Delete">
 		       		</form></td>
		      </tr>
		     </c:forEach>
	  	  	</tbody>
		  </table>
	</body>
</html>