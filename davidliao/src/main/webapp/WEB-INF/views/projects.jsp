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
		<div class="row">
			<div class="col-md-4 thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>Thumbnail label</h3>
					<p>Description</p>
					<p>
						<span class="label label-primary">Java</span>
						<span class="label label-success">JSP</span>
					</p>
					<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a></p>  -->
				</div>
			</div> <!-- /.thumbnail -->
			
			<div class="col-md-4 thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>Thumbnail label</h3>
					<p>Description</p>
					<p>
						<span class="label label-primary">Java</span>
						<span class="label label-success">JSP</span>
					</p>
					<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a></p>  -->
				</div>
			</div> <!-- /.thumbnail -->
			
			<div class="col-md-4 thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>Thumbnail label</h3>
					<p>Description</p>
					<p>
						<span class="label label-primary">Java</span>
						<span class="label label-success">JSP</span>
					</p>
					<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a></p>  -->
				</div>
			</div> <!-- /.thumbnail -->
		</div> <!-- /.row -->


		<h3>Work-In-Progress Projects</h3>
		<div class="row">
			<div class="col-md-4 thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>Thumbnail label</h3>
					<p>Description</p>
					<p>
						<span class="label label-primary">Java</span>
						<span class="label label-success">JSP</span>
					</p>
					<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a></p>  -->
				</div>
			</div> <!-- /.thumbnail -->
			
			<div class="col-md-4 thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>Thumbnail label</h3>
					<p>Description</p>
					<p>
						<span class="label label-primary">Java</span>
						<span class="label label-success">JSP</span>
					</p>
					<!-- <p><a href="#" class="btn btn-primary" role="button">Button</a></p>  -->
				</div>
			</div> <!-- /.thumbnail -->

		</div> <!-- /.row -->





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
							(including create, read, update, and delete (CRUD), advanced
							search and role-based security control)</h4>

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
						<h4 style="margin-top: 0px;">Shopping Cart powered by Ruby on
							Rails</h4>
						<ul>
							<li>Built the site with Ruby, Ruby on Rails and RubyMine</li>
							<li>Installed, configured, and deployed on Google Cloud VM
								(Ubuntu Linux 16.04)</li>
						</ul>
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home" href="http://davidliao.ca:3000"
								role="button"> Click here to try</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">Shopping Cart powered by Shopify
						</h4> Actual Shopify site has expired; please click below to see
						screenshots.
						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home" href="<c:url value='/shopping-cart'/>"
								role="button"> Click here to try</a>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<h4 style="margin-top: 0px;">RESTful</h4> Developed a CRUD RESTful
						WebService using Spring MVC and tested those services using
						external clients.
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
						</h4> Built and coded using an Arduino microcontroller, piezo buzzer,
						LCD screen, and various buttons, connected with a breadboard.

						<div style="text-align: center; margin-bottom: 5px;">
							<a class="btn btn-home" href="<c:url value='/hangman'/>"
								role="button">View Hangman game<br>(Multiple categories
								+ difficulties)
							</a> <a class="btn btn-home" href="<c:url value='/karaoke'/>"
								role="button">View Karaoke machine<br>(Plays music +
								displays lyrics simultaneously)
							</a>
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
						<h4 style="margin-top: 0px;">Volunteer Work - Laser Cutting</h4>
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
	<!-- /.layout -->

	<jsp:include page="footer.jsp" />

</body>
</html>