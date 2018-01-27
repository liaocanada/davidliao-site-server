<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<html lang="en">
<head>
	<title>Home</title>
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
			<li><a href=" <c:url value='/achievements'/>">My Achievements</a></li>
			<li><a href=" <c:url value='/projects'/>">My Projects</a></li>
			<li><a href=" <c:url value='/contact'/>">Contact</a></li>
			
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

	<!-- Home Page -->
	<div>
		<%-- <img src="<c:url value='/static/home.jpg' />" style= "width: 100%" /> --%>
		<img src="<c:url value='/static/images/home.jpg' />" style= "width: 100%; height: 30%;" alt="HomePagePicture" />
	</div>


	<div style="margin-top: 15px; color: #d1e0eb">
		<!-- Left Spacer -->
		<div class="col-sm-1" style="width: 2.5%;"></div>
		
		<!-- Text Box 1 -->
		<div align="center" class="bg-primary col-sm-6 text-white" style="width: 46.25%; background-color: #1F3D60; padding: 0px 40px">
			<h3>MY ACHIEVEMENTS</h3>
			<div align="left">
				<ul>
					<li>Oracle Certified Associate Java SE 8 Programmer</li>
					<li>Passed AP Computer Science exam with a score of 5</li>
					<li>Grade 11 - Outstanding Achievement in Computer Engineering</li>
					<li>Grade 11 - Silver Medal</li>
					<li>Grade 10 - Outstanding Achievement in Guitar</li>
					<li>Grade 10 - Silver Medal</li>
					<li>Emergency First Aid &amp; CPR - C</li>
				</ul>
			</div>
			<br><br>
<%--  			<a href="<c:url value='/achievements' />"
				class="btn btn-info btn-block" role="button" style="background-color: #6FA0C7; width: 70%">More Info</a> <br> --%>
		</div>
		
		<!-- Center Spacer -->		
		<div class="col-sm-1" style="width: 2.5%;"></div>
		
		<!-- Text Box 2 -->
		<div class="bg-primary col-sm-6 text-white" style="width: 46.25%; background-color: #1F3D60; padding: 0px 40px 40px">
			<h3 align="center">MY PROJECTS</h3>

		<table class="table"
			style="font-size: small; margin-bottom: 0px;">
			<col width="30%">
			<col width="70%">
			<tr style="color: white;">
				<td><button class="btn btn-block btn-primary">Spring
						MVC</button></td>
				<td>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</td>
			</tr>
			<tr style="color: white;">
				<td><button class="btn btn-block btn-primary">Spring
						MVC</button></td>
				<td>Last Name</td>
			</tr>
			<tr style="color: white;">
				<td><button class="btn btn-block btn-primary">Spring
						MVC</button></td>
				<td>Last Name</td>
			</tr>
		</table>


		</div>
	</div>

	<div class="col-sm-12" style="margin-top: 10px">
	</div>
	
 	<div class="col-sm-12 text-white text-center">
		Java is a registered trademark of Oracle and/or its affiliates. Other names may be trademarks of their respective owners.
	</div>

</body>
</html>
