<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Our Clients</title>

<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

	<!-- Navigation Bar -->
	<nav class="navbar" style="padding:5px 8%;">
		<ul class="nav navbar-nav">
			<li><a href="<c:url value='/home'/>">Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href=" <c:url value='/list'/>">Users</a></li>
			<li><a href=" <c:url value='/achievements'/>">My Achievements</a></li>
			<li><a href=" <c:url value='/projects'/>">My Projects</a></li>
			<li><a href=" <c:url value='/contact'/>">Contact</a></li>
			
			<!-- If not logged in, navbar will display login -->
		    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
		        <li><a href="<c:url value="/login"/>">Login</a></li>
		    </sec:authorize>
		    <!-- Otherwise, navbar will display a dropdown menu -->
		    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA') or hasRole('USER')">
			    <li class="dropdown" style="text-align: center; vertical-align: middle;">
				    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				    	<i class="material-icons" style="font-size:20px">account_circle</i>
				    	<span class="caret"></span>
				    </a>
					<ul class="dropdown-menu">
						<li><a>Logged in as: ${loggedinuser}</a></li>
						<li><a href=" <c:url value='/edit-user-${loggedinuser}'/>">Edit My Profile</a></li>
						<li><a href="<c:url value='/logout'/>">Log Out</a></li>
					</ul>
				</li>
		    </sec:authorize>
		</ul>
	</nav>
	
	<!--  Takes up the space of the fixed navbar -->
	<div style="margin-top: 60px;"></div>
	
	<!-- Clients Description  -->
	<div style="margin: 20px 100px;">

		<div class="container text-left" style="padding: 0px 20%">
			<h2 class="text-center" style="font-size: 70px; color: #6ea6ca">CLIENTS</h2>
			
			<div
				style="height: 5px; width: 30%; background-color: #6ea6ca; margin: 0 auto;">
			</div>
			<br>

			<p class="custom-text">We have provided solutions for all types of companies-private
				and public. Here are a few of our clients:</p>
		</div>

		<div class="container custom-text" style="margin: auto; width: 400px;">
			<ul>
				<li>IBM</li>
				<li>Shell</li>
				<li>Health Canada</li>
				<li>Canada Border Services Agency</li>
				<li>Shared Service</li>
				<li>Canada School of Public Service</li>
			</ul>
		</div>
	</div>
	
	<!-- Logos of client companies -->
<%-- 	<div class="container" style="width: 50%; margin: auto;">
		<div class="row">
			<div class="col-md-4 thumbnail">
				<a href="https://www.ibm.com/ca-en/">
					<img src="<c:url value="/static/images/clients/ibm.png" />" style="width: 50%">
				</a>
			</div>
			<div class="col-md-4 thumbnail">
				<a href="https://www.shell.ca/">				
					<img src="<c:url value="/static/images/clients/shell.png" />" style="width: 50%">
				</a>
			</div>

			<div class="col-md-4 thumbnail">
				<a href="https://www.canada.ca/en/health-canada.html">
					<img src="<c:url value="/static/images/clients/hc.jpg" />" style="width: 50%">
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 thumbnail">
				<a href="https://www.cbsa-asfc.gc.ca/menu-eng.html">
					<img src="<c:url value="/static/images/clients/cbsa.jpg" />" style="width: 50%">
				</a>
			</div>

			<div class="col-md-4 thumbnail">
				<a href="https://www.canada.ca/en/shared-services.html">
					<img src="<c:url value="/static/images/clients/ssc.jpg" />" style="width: 50%">
				</a>
			</div>
			<div class="col-md-4 thumbnail">
				<a href="http://www.csps-efpc.gc.ca/index-eng.aspx">
					<img src="<c:url value="/static/images/clients/csps.jpg" />" style="width: 50%">
				</a>
			</div>
		</div>

	</div> --%>
</body>
</html>