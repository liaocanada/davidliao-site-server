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
	<%-- <jsp:include page="x.jsp"/> --%>
	<!-- Navigation Bar -->
	<nav class="navbar" style="padding:5px 8%;">
		<ul class="nav navbar-nav">
			<li><a href="<c:url value='/home'/>">Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href=" <c:url value='/achievements'/>">My Achievements</a></li>
			<li><a href=" <c:url value='/projects'/>">My Projects</a></li>
			<li><a href=" <c:url value='/contact'/>">Contact</a></li>
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
			Java programming &amp; Java EE web development:
			<ul>
				<li>Passed the Oracle Java certification exam with 84%</li>
				<li>Developed the presentation layer using JSP, Servlet, JavaScript, CSS, and HTML</li>
				<li>Used JPA and Hibernate to aid data persistence in the application</li>
				<li>Designed the application using Spring MVC Framework for easy maintainability</li>
				<li>Used Log4j to create logs of application and aid in debugging the application</li>
				<li>Created JUnit test cases to cover unit testing for the components</li>
				<li>Joined a co-op program at inBay Technologies to develop a Java EE web application</li>
			</ul>
			
			System Administrator:
			<ul>
				<li>Google Cloud VM instance</li>
				<li>Google Domains</li>
				<li>Ubuntu Linux 16.04</li>
				<li>Apache Tomcat 8.0</li>
				<li>MySQL 5.7</li>
			</ul>
			Academics:
				<ul>
					<li>Passed AP Computer Science exam with a score of 5</li>
					<li>Grade 11 - Outstanding Achievement in Computer Engineering</li>
					<li>Grade 10 &amp; 11 - Silver Medal</li>
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
			style="font-size: small; margin-bottom: 0px; color: white;">
			<%-- <col width="30%">
			<col width="70%"> --%>
			<tr>
				<td>
					<h4>User Management System</h4> 
					
					Employee management system with CRUD functions, using Spring MVC, Spring Security 
					and Hibernate. <br><br> 
						
					<strong>Environment: </strong> Eclipse IDE, Apache Tomcat 8.0, HTML, CSS, JavaScript, <br>
					JSP/Servlet, Ubuntu Linux 16.04, MySQL Server 5.7, Spring MVC, Spring Security, Maven, <br>
					Hibernate, JUnit, Bootstrap and jQuery <br><br>
					Test username: tester | password: davidliao
				
				<div style="text-align: center;"><a class="btn btn-home" href="http://davidliao.ca/company/list" role="button">
					Click here to try</a>
				</div>
			</tr>
			<tr>
				<td>
					<h4>Shopping Cart</h4>
					Shopping cart demo with Ruby on Rails.<br><br>
					<strong>Environment: </strong> JetBrains RubyMine IDE, Ruby and Ruby on Rails <br>
					<div style="text-align: center;"><a class="btn btn-home" href="http://davidliao.ca:3000" role="button">
						Click here to try</a>
					</div>
				</td>
			<tr>
				<td>
					<h4>RESTful</h4>
					Texttexttext<br><br>
					<strong>Environment: </strong> ...
					<div style="text-align: center;"><a class="btn btn-home" href="https://docs.google.com/presentation/d/15-P39t9ycIUUMqi7Mu9bg1z7OFD-kq-8GY6N2EVlWOM/edit?usp=sharing" role="button">
						Click here to try</a>
					</div>
				</td>
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
