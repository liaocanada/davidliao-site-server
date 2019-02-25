<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>

<head>
	<title>My Projects</title>
	<jsp:include page="resources.jsp" />
</head>

<body>
	<jsp:include page="header.jsp" />
		
<div style="margin: 5px 10%;"></div>

<!-- <div class="container text-left" style="padding: 0px 20%">
	<h2 class="text-center" style="font-size: 70px; color: #6ea6ca">My Projects</h2>
	<div style="height: 5px; width: 30%; background-color: #6ea6ca; margin: 0 auto;"> </div>
	<br><br>
</div> -->

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
				<tr>
					<td>
						<h4 style="margin-top: 0px;">
							Arduino/circuit board projects
							<!-- Hangman Game (<a class="link-yellow" href="https://en.wikipedia.org/wiki/Hangman_(game)">about this game</a>) -->
						</h4> 
						Built and coded using an Arduino microcontroller, piezo buzzer, LCD screen,
						and various buttons, connected with a breadboard.
						
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home"
								href="<c:url value='/hangman'/>"
								role="button">View Hangman game<br>(Multiple categories + difficulties)</a>
							<a class="btn btn-home"
								href="<c:url value='/karaoke'/>"
								role="button">View Karaoke machine<br>(Plays music + displays lyrics simultaneously)</a>
						</div>
						
		 			</td>
		 		</tr>
<%-- 		 		<tr>
		 			<td>
		 				<h4 style="margin-top: 0px;">
							Karaoke Machine Simulator
						</h4> 
		 				Built and coded using an Arduino microcontroller, piezo buzzer, LCD screen,
						and various buttons, connected with a breadboard. Plays music while displays synchronized lyrics 
						using a single thread!
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home"
								href="<c:url value='/karaoke'/>"
								role="button">View demo</a>
						</div>
					</td>
				</tr> --%>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">
							Volunteer Work - Laser Cutting
						</h4>
						Created and donated Christmas gifts to a senior home.
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home" href="<c:url value='/present'/>"
								role="button">View demo<br>
							</a>
						</div>
					</td>
				</tr>
				
			</table>


		</div>
	</div>

<!-- <div style="padding: 5% 0; width:75%; margin: 0 auto">
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQ1SyJ9VmE5PtNk75hUs4g_JMHW4-A4MzW3OdSq_lY-j3DeSxnTkWjx97H0FIxqFiRVvgEMKs6iIQfI/embed?start=true&loop=true&delayms=3000" frameborder="0" width="887" height="384" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe> -->

<jsp:include page="footer.jsp" />
	
</body>
</html>