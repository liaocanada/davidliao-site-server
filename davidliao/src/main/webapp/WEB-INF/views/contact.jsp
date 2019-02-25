<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en" style="background-color: #1F3D60;">

<head>
	<title>Contact Me</title>
	<jsp:include page="resources.jsp" />
</head>

<body style="background-color: #1F3D60;">
	<jsp:include page="header.jsp" />
		
	<!-- Contact Details  -->
	<div style="margin-top: 100px;">
		<h2 style="font-size: 70px; color: white; text-align:center">CONTACT US</h2>
		<div style="height: 5px; width: 14%; background-color: white; margin: 0 auto;"> </div>
		
	<%-- 	<div class="col-sm-4" style="width: 50%; padding: 3%">
			<img src="<c:url value="/static/images/map.png" />" style="width: 100%">
		</div> --%>
		
		<div class="col-sm-4 text-center" style="width: 100%; margin: auto; color: white;">
			<br><br><br><br><br><br><br><br>
			<h4>If you have any questions please send us an email:</h4>
			<i class="material-icons">mail</i> <b>contact@davidliao.ca</b>
	
		</div>
	</div>
</body>
</html>
