<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>

<head>
	<title>My Projects</title>
	<jsp:include page="resources.jsp" />
</head>

<body>
	<jsp:include page="nav.jsp" />
		
<div style="margin: 5px 10%;"></div>

<!-- <div class="container text-left" style="padding: 0px 20%">
	<h2 class="text-center" style="font-size: 70px; color: #6ea6ca">My Projects</h2>
	<div style="height: 5px; width: 30%; background-color: #6ea6ca; margin: 0 auto;"> </div>
	<br><br>
</div> -->

<div style="padding: 5% 0; width:75%; margin: 0 auto">
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQ1SyJ9VmE5PtNk75hUs4g_JMHW4-A4MzW3OdSq_lY-j3DeSxnTkWjx97H0FIxqFiRVvgEMKs6iIQfI/embed?start=true&loop=true&delayms=3000" frameborder="0" width="887" height="384" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</div>
	<%-- <div style="margin: 0 auto; padding-top: 5%">
	<div class="col-sm-4" style="width:10%;"></div>
	<div class="col-sm-4" style="width: 26%;">
		<img src="<c:url value="/static/images/services/pic1.png" />" style="width: 100%">
	</div>
	<div style="width: 1%;"></div>
	<div class="col-sm-4" style="width: 26%;">
		<img src="<c:url value='/static/images/services/pic2.png'/>" style="width: 100%" alt="a">
	</div>
	<div style="width: 1%;"></div>
	<div class="col-sm-4" style="width: 26%;">
		<img src="<c:url value='/static/images/services/pic3.png'/>" style="width: 100%">
	</div>
</div> --%>
	
</body>
</html>