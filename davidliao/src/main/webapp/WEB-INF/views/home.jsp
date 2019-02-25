<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>

<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Home</title>
	<jsp:include page="resources.jsp" />

	<style>
	th, td {
    padding: 10px 60px;
    }
	</style>
</head>

<body>
	<jsp:include page="header.jsp"/>
	
	<!-- Banner image -->
	<div id="banner">
		<img id="banner-image" src="<c:url value='/static/images/home.jpg' />" alt="HomePagePicture"/>
		<div id="banner-cover">
			<div id="banner-cover-contents">
				<div id="banner-top-">
					<h1>DAVID LIAO</h1>
					<h4>Web Developer</h4>
					<a class="btn btn-primary btn-block" href='<c:url value="/resume" />' role="button"> 
						View Resume
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Side-by-side boxes -->
	<div class="col-container">
		<!-- Left Spacer -->
		<div  id="home-side-spacer" class="col col-sm-1"></div>

		<!-- Text Box 1 -->
		<div id="home-textbox" align="center" class="bg-primary col col-sm-6 text-white">
			<h3>ACHIEVEMENTS</h3>
			<table class="table"
				style="font-size: small; margin-bottom: 0px; color: white;">
				<tr>
					<td>
						<h4 style="margin-top: 0px;">Certifications and Education</h4>					
						<ul>
							<li>OCP - Oracle Certified Professional Java SE 8 Programmer (2019)</li>
							<li>OCA - Oracle Certified Associate Java SE 8 Programmer (2017)</li>
							<li>Carleton University, Bachelor of Computer Science
								<ul><li>A+ in all courses - Fall 2018 Term</li></ul>
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td valign="bottom">
						<div style="text-align: center;">
							<a id="btn-home" class="btn btn-primary btn-block" 
								href='<c:url value="/achievements" />' role="button"> More
							</a>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<!-- Center Spacer -->
		<div id="home-center-spacer" class="col col-sm-1"></div>

		<!-- Text Box 2 -->
		<div id="home-textbox" class="bg-primary col col-sm-6 text-white">
			<h3 align="center">PROJECTS</h3>

			<table class="table" style="font-size: small; margin-bottom: 0px; color: white;">
				<tr>
					<td>
						<h4 style="margin-top: 0px;">User Management System</h4>
						<ul>
							<li>Developed the presentation layer using JSP, JavaScript,
								CSS, HTML, Bootstrap and jQuery
							<li>Designed and developed web applications with Spring MVC,
								Spring Security frameworks for easy maintainability, JPA and
						</ul> 
				</tr>
				<tr>
					<td valign="bottom">
						<div style="text-align: center;">
							<a id="btn-home" class="btn btn-primary btn-block" 
							href='<c:url value="/achievements" />' role="button"> More
							</a>
						</div>
					</td>
				</tr>
			</table>


		</div>
	</div>

<jsp:include page="footer.jsp" />

</body>
</html>
