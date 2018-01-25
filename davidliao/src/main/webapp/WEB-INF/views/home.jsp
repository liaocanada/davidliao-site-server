<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<html lang="en">
<head>
	<title>Home</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

	<!-- Navigation Bar -->
	<nav class="navbar" style="padding:5px 8%;">
		<ul class="nav navbar-nav">
			<li><a href="<c:url value='/home'/>">Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href=" <c:url value='/list'/>">Users</a></li>
			<li><a href=" <c:url value='/services'/>">Services</a></li>
			<li><a href=" <c:url value='/clients'/>">Clients</a></li>
			<li><a href=" <c:url value='/contact'/>">Contact</a></li>
<%-- 		<li><a href=" <c:url value='/news'/>">News</a></li>		 --%>		
			
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

	<!-- Home Page -->
	<div>
		<%-- <img src="<c:url value='/static/home.jpg' />" style= "width: 100%" /> --%>
		<img src="<c:url value='/static/images/home.jpg' />" style= "width: 100%; height: 40%;" alt="HomePagePicture" />
	</div>


	<div style="margin-top: 30px; color: #d1e0eb">
		<!-- Left Spacer -->
		<div class="col-sm-1" style="width: 15%;"></div>
		
		<!-- Text Box 1 -->
		<div align="center" class="bg-primary col-sm-6 text-white" style="width: 32.5%; background-color: #1F3D60; padding: 0px 40px">
			<h3>SERVICES</h3><br>
			<p>
				5186180 Canada Corp. is an excellent choice for businesses and
					individuals who want a flexible range of services. Our approach to
					services provides excellent value for cost and builds on a serious
					commitment to client trust and confidentiality. We deliver a wide
					range of services.
			</p>
			
			<a href="<c:url value='/services' />"
				class="btn btn-info btn-block" role="button" style="background-color: #6FA0C7; width: 70%">More Info</a> <br>
		</div>
		
		<!-- Center Spacer -->		
		<div class="col-sm-1" style="width: 5%;"></div>
		
		<!-- Text Box 2 -->
		<div align="center" class="bg-primary col-sm-6 text-white" style="width: 32.5%; background-color: #1F3D60; padding: 0px 40px">
			<h3>CLIENTS</h3><br>
			<p>
				Building on strong customer service as foundational value, 5186180
					Canada Corp. works with clients across Canada and the world with a
					focus on Ottawa and the Ottawa Valley.
			</p>
			<br> <br>
			<a href="<c:url value='/clients' />"
				class="btn btn-info btn-block" role="button" style="background-color: #6FA0C7; width: 70%">More Info</a> <br>
		</div>
	</div>

	<div class="col-sm-12" style="margin-top: 10px">
	</div>
	
 	<div class="col-sm-12 text-white text-center">
		Java is a registered trademark of Oracle and/or its affiliates. Other names may be trademarks of their respective owners.
	</div>

</body>
</html>
