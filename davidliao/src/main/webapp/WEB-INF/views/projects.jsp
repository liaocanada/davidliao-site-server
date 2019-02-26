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
						<p><c:out value="${ project.description }" /></p>
						<p>
							<c:forEach var="skill" items="${ project.skills }">								
								<span id="skill-tag" class="label ${ skill.bsTagClass }">
									<c:out value="${ skill.fullName }" />
								</span>
							</c:forEach>
						</p>
						<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a></p>  -->
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
						<p><c:out value="${ project.description }" /></p>
						<p>
							<c:forEach var="skill" items="${ project.skills }">								
								<span id="skill-tag" class="label ${ skill.bsTagClass }">
									<c:out value="${ skill.fullName }" />
								</span>
							</c:forEach>
						</p>
						<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a></p>  -->
					</div>
					</div>
				</div>
			</c:forEach>
		</div>
		
	</div>
				
	<jsp:include page="footer.jsp" />

</body>
</html>