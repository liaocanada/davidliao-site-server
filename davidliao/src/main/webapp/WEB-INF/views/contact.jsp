<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<html lang="en" style="background-color: #1F3D60;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Contact Us</title>
</head>
<body style="background-color: #1F3D60;">
	<!-- Navigation Bar -->
	<nav class="navbar" style="padding:5px 8%;">
		<ul class="nav navbar-nav">
			<li><a href="<c:url value='/home'/>">Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href=" <c:url value='/list'/>">Users</a></li>
			<li><a href=" <c:url value='/services'/>">Services</a></li>
			<li><a href=" <c:url value='/clients'/>">Clients</a></li>
			<li><a href=" <c:url value='/contact'/>">Contact</a></li>
<%-- 		<li><a href=" <c:url value='/news'/>">News</a></li>		 --%>		
			
			<!-- If not logged in, navbar will display login -->
		    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
		        <li><a href="<c:url value="/login"/>">Login</a></li>
		    </sec:authorize>
		    <!-- Otherwise, navbar will display a dropdown menu -->
		    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA') or hasRole('USER')">
			    <li class="dropdown" style="text-align: center; vertical-align: middle;">
				    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				    	<i class="material-icons" style="font-size:20px">account_circle</i>
				    	<span class="caret"></span>
				    </a>
					<ul class="dropdown-menu">
						<li><a>Logged in as: ${loggedinuser}</a></li>
						<li><a href=" <c:url value='/edit-user-${loggedinuser}'/>">Edit My Profile</a></li>
						<li><a href="<c:url value='/logout'/>">Log Out</a></li>
					</ul>
				</li>
		    </sec:authorize>
		</ul>
	</nav>
	
	<!--  Takes up the space of the fixed navbar -->
	<div style="margin-top: 70px;"></div>
	
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
			<i class="material-icons">mail</i> <b>contact@10java.com</b>
	
		</div>
	</div>
</body>
</html>
