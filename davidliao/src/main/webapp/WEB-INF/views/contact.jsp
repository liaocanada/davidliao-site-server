<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en" style="background-color: #1F3D60;">

<head>
<title>Contact Me</title>
<jsp:include page="resources.jsp" />
</head>

<body>
	<jsp:include page="header.jsp" />

	<div class="layout">

		<div class="page-header">
			<h1>
				Contact Me <small>Contact info and other links</small>
			</h1>
		</div>

		<div class="well">
			<h3>Contact info</h3>
			<p><i class="fas fa-at"></i> contact@davidliao.ca or liao.canada@gmail.com
			<p><i class="fas fa-mobile-alt"></i> Send a text to (613) 600-8621
			
			<h3>LinkedIn</h3>
			<i class="fab fa-linkedin"></i>
			<a href="https://linkedin.com/in/david-liao/">https://linkedin.com/in/david-liao/</a>

			<h3>GitHub</h3>
			<i class="fab fa-github-square"></i>
			<a href="https://github.com/liaocanada">https://github.com/liaocanada</a>
		</div>

	</div>
</body>
</html>
