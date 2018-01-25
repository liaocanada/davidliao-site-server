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

	<style>
	th, td {
    padding: 10px 60px;
    }
	</style>
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

	<!-- Top introduction -->
	<div class="row" style="margin: 0 60px;">
		<!-- Image -->
		<div class="col-md-3" align="center">
			<img src="<c:url value='/static/images/logo.png' />"
				style="width: 70%; height: 15%; padding-top: 7px;" alt="OCA_logo" />
		</div>
		<!-- Name, title, email -->
		<div class="col-md-7" align="center">
			<h1 style="margin: 0; text-decoration: underline;">
				<b><i>David Liao</i></b>
			</h1>
			<h4 style="margin: 0;">Oracle Certified Associate, Java SE 8
				Programmer</h4>
			<h4 style="margin: 0;">Email: contact@davidliao.ca</h4>
		</div>
		<div class="col-md-2"></div>
	</div>

	<!-- Side-by-side boxes -->
	<div class="col-container" style="margin-top: 15px;">
		<!-- Left Spacer -->
		<div class="col col-sm-1" style="width: 2.5%;"></div>

		<!-- Text Box 1 -->
		<div align="center" class="bg-primary col col-sm-6 text-white"
			style="width: 46.25%; background-color: #1F3D60; padding: 0px 40px">
			<h3>MY ACHIEVEMENTS</h3>
			<table class="table"
				style="font-size: small; margin-bottom: 0px; color: white;">
				<tr>
					<td>
						<h4 style="margin-top: 0px;">Java programming &amp; Java EE
							web development</h4>
						<ul>
							<li>Passed the Oracle Java certification exam with 84%</li>
							<li>Worked as a Java Developer (co-op) at inBay Technologies
								(<a href="https://www.inbaytech.com/" class="link-yellow">www.inbaytech.com</a>)
								to develop a Java EE Human Resources Management System web
								application
							</li>
							<li>Experience with JSP, Servlet, JavaScript, CSS, HTML,
								Bootstrap, jQuery, Spring MVC, Spring Security, Hibernate,
								MySQL, SQL, Maven, Git, Log4j and JUnit</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">Ruby on Rails</h4>
						<ul>
							<li>Experience with Ruby, Ruby on Rails and RubyMine
						</ul>
					</td>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">System Administration</h4> Installed,
						configured and maintained the following environment:
						<ul>
							<li>Google Cloud VM instance</li>
							<li>Google Domains</li>
							<li>Ubuntu Linux 16.04</li>
							<li>Apache Tomcat 8.0</li>
							<li>MySQL 5.7</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">Academics</h4>
						<ul>
							<li>Passed AP Computer Science exam with a score of 5</li>
							<li>Grade 11 - Outstanding Achievement in Computer
								Engineering</li>
							<li>Grade 10 &amp; 11 - Silver Medal (above 90 average)</li>
							<li>Grade 10 - Outstanding Achievement in Guitar</li>
						</ul>

					</td>
				</tr>
			</table>
			<br>
			<br>
		</div>

		<!-- Center Spacer -->
		<div class="col col-sm-1" style="width: 2.5%;"></div>

		<!-- Text Box 2 -->
		<div class="bg-primary col col-sm-6 text-white"
			style="width: 46.25%; background-color: #1F3D60; padding: 0px 40px 40px">
			<h3 align="center">MY PROJECTS</h3>

			<table class="table"
				style="font-size: small; margin-bottom: 0px; color: white;">
				<%-- <col width="30%">
			<col width="70%"> --%>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">User Management System 
						(including create, read, update, and delete (CRUD), advanced search 
						and role-based security control)</h4>

						<ul>
							<li>Developed the presentation layer using JSP, JavaScript,
								CSS, HTML, Bootstrap and jQuery
							<li>Designed and developed web applications with Spring MVC,
								Spring Security frameworks for easy maintainability, JPA and
								Hibernate to aid data persistence in the application, managed
								data with MySQL and SQL
							<li>Used build tools (Maven), source control software (Git),
								logging utilities (Log4j) and unit test tools (JUnit)
						</ul> 

						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home" href="http://davidliao.ca/company/list"
								role="button"> Click here to try<br>(username: tester |
								password: davidliao)
							</a>
						</div>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">
							Shopping Cart powered by Ruby on Rails
						</h4> 
						<ul>
							<li>Built the site with Ruby, Ruby on Rails and RubyMine</li>
							<li>Installed, configured, and deployed on Google Cloud VM (Ubuntu Linux 16.04)</li>
						</ul>
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home" href="http://davidliao.ca:3000"
								role="button"> Click here to try</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">
							Shopping Cart powered by Shopify
						</h4> 
						Actual Shopify site has expired; please click below to see screenshots.
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home" href="<c:url value='/shopping-cart'/>"
								role="button"> Click here to try</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">RESTful</h4>
						Developed a CRUD RESTful WebService using Spring MVC and tested those 
						services using external clients.
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home"
								href="http://davidliao.ca:8080/DavidSpringMVCCRUDRestServiceClient/demo"
								role="button"> Click here to try</a>
						</div>
					</td>
				</tr>
<!-- 				<iframe width="560" height="315" src="https://www.youtube.com/embed/CYxwv1izP7Q?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
				
			</table>


		</div>
	</div>

	<div class="col-sm-12" style="margin-top: 10px">
	</div>
	
 	<div class="col-sm-12 text-white text-center">
		© 2018 by David Liao. Proudly created with Google Cloud.
	</div>

</body>
</html>
