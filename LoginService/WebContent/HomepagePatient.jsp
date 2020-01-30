<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Insert title here</title>
 <c:if test="${sessionScope.Email==null }">
   <c:redirect url="Index.jsp"></c:redirect>
   </c:if>
</head>
<body>
		Welcome Patient
		<div>${message}</div>
</body>
</html>