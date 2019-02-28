<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

		<div class="alert alert-success alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			Hi! You are in the right place, as I am currently looking for a job for this summer! 
			Please send me an email or a text and I'll be in touch shortly.
		</div>

		<div class="well">
			
			
			<h3>Contact info</h3>
			<p><i class="fas fa-at"></i> contact@davidliao.ca or liao.canada@gmail.com
			<p><i class="fas fa-mobile-alt"></i> (613) 600-8621
			
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
