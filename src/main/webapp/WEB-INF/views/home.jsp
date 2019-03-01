<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<jsp:include page="resources.jsp" />
	<title>Home</title>
</head>

<body>
	<jsp:include page="header.jsp"/>
	
	<!-- Banner image -->
	<div id="banner">
		<img id="banner-image" src="<c:url value='/static/images/home.jpg' />" alt="HomePagePicture"/>
		<div id="banner-cover">
			<div id="banner-cover-contents">
				<h1>DAVID LIAO</h1>
				<h4>Web Developer</h4>
				<a class="btn btn-primary btn-block" href='<c:url value="/resume" />' role="button"> 
					View Resume
				</a>
			</div>
		</div>
	</div>

	<!-- Text boxes -->
	<div id="home-textbox-container" class="row row-eq-height">
	
		<!-- Achievements box -->
		<div id="home-textbox" class="col-sm-6">
			<table class="table">
				<tr><th><h3>ACHIEVEMENTS</h3></th></tr>
				<tr><td>
					<h4 class="subheader">Certifications</h4>
					<ul>
						<li><b>OCP</b> - Oracle Certified Professional Java SE 8 Programmer (2019)</li>
						<li>OCA - Oracle Certified Associate Java SE 8 Programmer (2017)</li>

					</ul>
					<h4 class="subheader">Education</h4>
					<ul>
						<li>Carleton University, Bachelor of Computer Science
							<ul><li>A+ in all courses - Fall 2018 Term</li></ul>
						</li>
					</ul>
				</td></tr>
				<tr><td id="button-cell">
					<a id="btn-home" class="btn btn-primary btn-block" 
						href='<c:url value="/achievements" />' role="button"> More Info
					</a>
				</td></tr>
			</table>
		</div>
		
		<!-- Projects box -->
		<div id="home-textbox" class="col-sm-6">
			<table class="table">
				<tr><th><h3>PROJECTS</h3></th></tr>
				<tr><td>
					<h4 class="subheader">Java Spring Web Apps</h4>
					<ul>
						<li>Personal Website (this site!)</li>
						<li>Human Resources Management System - made for 
							<a class="link-yellow" href="https://www.inbaytech.com/">inBay Technologies</a>
						</li>
					</ul>
					
					<h4 class="subheader">JavaScript React Web Apps</h4>
					<ul>
						<li>Featured Listings App - made for 
							<a class="link-yellow" href="https://www.gradea.ca/">Grade A</a>
						</li>
						<li>CareerCounsel - a single-page application that generates 
							statistics based on real-time job listings
						</li>
					</ul>
				</td></tr>
				<tr><td id="button-cell">
					<a id="btn-home" class="btn btn-primary btn-block" 
						href='<c:url value="/projects" />' role="button"> More Info
					</a>
				</td></tr>
			</table>
		</div> <!-- /#home-textbox -->
	
	</div> <!-- /#home-textbox-container -->

<jsp:include page="footer.jsp" />

</body>
</html>
