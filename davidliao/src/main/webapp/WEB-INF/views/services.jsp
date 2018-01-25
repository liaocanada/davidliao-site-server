<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit User</title>

<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
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
	<div style="margin-top: 60px;"></div>
	
<!-- Services Description  -->	
<div style="margin: 5px 10%;">

	<div class="container text-left" style="padding: 0px 20%">
		<h2 class="text-center" style="font-size: 70px; color: #6ea6ca">SERVICES</h2>
		<div style="height: 5px; width: 30%; background-color: #6ea6ca; margin: 0 auto;"> </div>
		<br><br>

		<p class="custom-text">Our goal is to provide 10 out of 10 Java solutions to any
			problem. We have provided solutions for world-class companies like
			IBM, Procom, and Shell Canada. We also provide services for the
			federal government. We offer whole solutions, including project
			development and infrastructure setup. Our employees are certified and hold the following
			certifications:</p>
	</div>
			
	<div class="container custom-text" style="margin: auto; width:600px; padding: 3% 0">
		<ul>
			<li>IBM Certified Administrator - WebSphere Application Server</li>
			<li>IBM Certified Enterprise Developer - WebSphere Studio</li>
			<li>IBM Certified Solution Developer - WebSphere Studio</li>
			<li>IBM Certified Solution Developer - WebSphere Portal</li>
			<li>Sun Certified Web Component Developer</li>
			<li>Sun Certified Java Programmer</li>
			<li>IBM Certified Developer - XML, OOAD/UML</li>
			<li>IBM Certified Associate Developer - WebSphere Studio</li>
		</ul>
	</div>
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