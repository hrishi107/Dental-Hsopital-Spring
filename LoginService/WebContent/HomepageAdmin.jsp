<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin</title>
<c:if test="${sessionScope.Email==null }">
   <c:redirect url="Index.jsp"></c:redirect>
   </c:if>
</head>
<body><div class="container-fluid">
		<div class="row bg-light d-flex" style="height: 40px;">
			<div class="col-11">Welcome Admin</div>
			<div class="col-1"> <a href="home.jsp">Logout</a></div>
		</div>
	
		<div class="row" style="padding-top: 70px">
			<div class="col-3"></div>
			<div class="col-6 rounded"  style="background-color: #F0F0F0; text-align: center; padding-top: 0px">
				<table class="table table-hover">
			      <thead>
			      	<th>Operations :</th>
			      </thead>
			      <tbody>
			        <tr>
			          <td><a href="DentistHistory.jsp">Doctor History</a></td>
			        </tr>
			        <tr>
			          <td><form action="UserList" method="get"><input type="submit">Patient History</form></td>
			        </tr>
			        <tr>
			          <td><a href="ApptHistory.jsp">View Appointment</a></td>
			        </tr>
			        </tbody>
				</table>	
			</div>
			<div class="col-3"></div>
		</div>
	</div>
	
	</body>
	

</html>