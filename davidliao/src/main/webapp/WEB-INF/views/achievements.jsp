<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>

<head>
<jsp:include page="resources.jsp" />
<title>My Projects</title>
</head>

<body>
	<jsp:include page="header.jsp" />

	<div class="layout">

		<div class="page-header">
			<h1>
				Achievements <small>Awards, certifications, and education</small>
			</h1>
		</div>
		
		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			Note: this website isn't optimized for mobile... yet.
		</div>


		<h3>Certifications</h3>
		<div class="media">
			<div class="media-left">
				<img class="media-object" 
					src="<c:url value="/static/images/achievements/OCP.bmp" />" 
					alt="OCP Logo" 
				/>
			</div>
			<div class="media-body">
				<h4 class="media-heading">OCP - Oracle Certified Professional</h4>
				Includes topics such as:
				<ul>
					<li>Advanced Java Class Design
						<ul>
							<li>Class structures: singletons, factories, immutability, etc.</li>
							<li>Nested classes, inner classes, local classes</li>
							<li>Enums</li>
						</ul>
					</li>
					<li>And more... For details see 
						<a href="https://education.oracle.com/java-se-8-programmer-ii/pexam_1Z0-809#heading2">
							here
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="media">
			<div class="media-left">
				<img class="media-object" 
					src="<c:url value="/static/images/achievements/OCA.bmp" />" 
					alt="OCA Logo" 
				/>
			</div>
			<div class="media-body">
				<h4 class="media-heading">OCA - Oracle Certified Associate</h4>
				Includes topics such as:
				<ul>
					<li>Java Basics</li>
					<li>Data Types</li>
					<li>Object-Oriented Programming Principles</li>
					<li>Strings</li>
					<li>Handling exceptions</li>
					<li>And more... For details see 
						<a href="https://education.oracle.com/java-se-8-programmer-i/pexam_1Z0-808#heading2">
							here
						</a>
					</li>
				</ul>
			</div>
		</div>

		<h3>Education</h3>
		<div class="media">
			<div class="media-left media-middle">
				<img class="media-object" 
					src="<c:url value="/static/images/achievements/carleton.jpg" />" 
					alt="Carleton Picture" 
				/>
			</div>
			<div class="media-body">
				<h4 class="media-heading">Bachelor's degree in Computer Science, Carleton University</h4>
				<ul>
					<li>Fall 2018: A+ in all courses</li>
					<li>Specialization in Mobile Applications Development</li>
					<li>Expected Graduation: May 2023</li>
				</ul>
			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>