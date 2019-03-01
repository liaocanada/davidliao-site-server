<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
				Projects <small>A listing of my completed and WIP projects</small>
			</h1>
		</div>


		<h3>Completed Projects</h3>
		<div id="projects-row" class="row">
			<c:forEach var="project" items="${ completedProjects }">
				<div class="col-md-4 thumbnail-wrapper">
				<div class="thumbnail">

					<img src="<c:url value="/static/images/projects/${ project.imageUrl }"/>" alt="Project Image">
					<div class="caption">
						<h3><c:out value="${ project.title }" /></h3>
						<p><c:out value="${ project.description }" escapeXml="false" /></p>
						<p>
							<c:forEach var="skill" items="${ project.skills }">	
								<a href="#">
									<span id="skill-tag" class="label ${ skill.bsTagClass }">
										<c:out value="${ skill.fullName }" />
									</span>
								</a>
							</c:forEach>
						</p>
					</div>
				</div>				
				</div>
			</c:forEach>
		</div>

		<h3>Work-In-Progress Projects</h3>
		<div id="projects-row" class="row">
			<c:forEach var="project" items="${ wipProjects }">
				<div class="col-md-4 thumbnail-wrapper">
					<div class="thumbnail">
					<img src="<c:url value="/static/images/projects/${ project.imageUrl }"/>" alt="Project Image">
					<div class="caption">
						<h3><c:out value="${ project.title }" /></h3>
						<p><c:out value="${ project.description }" escapeXml="false" /></p>
						<p>
							<c:forEach var="skill" items="${ project.skills }">		
								<a href="#">
									<span id="skill-tag" class="label ${ skill.bsTagClass }">
										<c:out value="${ skill.fullName }" />
									</span>
								</a>
							</c:forEach>
						</p>
					</div>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<div class="page-header">
			<h3>Software of interest</h3>
			<p class="subtext">Some technologies that I am currently learning, or wanting to explore:</p>
		</div>
		<div class="well">
			<ul>
				<li><b>Android Development</b>: pursing an Android Associate Developer certification</li>
				<li><b>Amazon Web Services</b>: exploring EC2, Elastic Beanstalk, and Cloud Services</li>
				<li>Spring Boot</li>
				<li>Hibernate</li>
				<li>Thymeleaf</li>
				<li>Angular/TypeScript</li>
				<li>Objective-C/Swift</li>
			</ul>
		</div>
		
	</div>
				
	<jsp:include page="footer.jsp" />

</body>
</html>