<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<html>

<head>
<title>User Registration Form</title>
<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="<c:url value='/static/css/bootstrap-datepicker3.css' />" rel="stylesheet" />
<script src="<c:url value='/static/js/bootstrap-datepicker.js' />"></script>
<script>
$(document).ready(function() {
	$('#date-container input').datepicker({
	    format: "yyyy/mm/dd",
	    todayBtn: "linked"
	});
})
</script>

</head>

<body>
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
	
	
 	<!-- Edit/Add User form -->
	<div class="container text-center">
		<c:choose>
			<c:when test="${edit}">
				<h2>Edit User Information</h2>
			</c:when>
			<c:otherwise>
				<h2>Add a New User</h2>
			</c:otherwise>
		</c:choose>
	</div>
<div>
	<!-- Sending hidden inputs, including ID and IP address, for the form -->
	<form:form method="POST" modelAttribute="user" class="form-horizontal" id="form1">
		<form:input type="hidden" path="id" id="id" />
		<c:choose>
			<c:when test="${edit}">
				<form:input type="hidden" path="ip" id="ip" />
			</c:when>
			<c:otherwise>
				<form:input type="hidden" path="ip" id="ip" value="N/A" />
			</c:otherwise>
		</c:choose>
 		<c:if test="${loggedinuser==user.ssoId}">
				<form:select style="display: none;" path="userProfiles" items="${roles}" multiple="true"
					itemValue="id" itemLabel="type" class="form-control" />
		</c:if> 

		<!-- Fields -->

		<div class="field">
			<h5>First Name: </h5>
			<form:input type="text" path="firstName" id="firstName" class="form-control" placeholder="First Name"/>
			<div class="has-error">
				<form:errors path="firstName" class="help-inline" />
			</div>
		</div>
		<br>

		<div class="field">
			<h5>Last Name: </h5>
			<form:input type="text" path="lastName" id="lastName" class="form-control" placeholder="Last Name" />
			<div class="has-error">
				<form:errors path="lastName" class="help-inline" />
			</div>
		</div>
		<br>

		<div class="field">
			<h5>SSO ID: </h5>
			<c:choose>
				<c:when test="${edit}">
					<form:input type="text" path="ssoId" id="ssoId" class="form-control" disabled="true" />
				</c:when>
				<c:otherwise>
					<form:input type="text" path="ssoId" id="ssoId" class="form-control" placeholder="SSO ID" />
					<div class="has-error">
						<form:errors path="ssoId" class="help-inline" />
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<br>

		<div class="field">
			<h5>Password: </h5>
			<form:input type="password" path="password" id="password" class="form-control" placeholder="Password" />
			<div class="has-error">
				<form:errors path="password" class="help-inline" />
			</div>
		</div>
		<br>

		<div class="field">
			<h5>Email Address: </h5>
			<form:input type="text" path="email" id="email" class="form-control" placeholder="Email Address" />
			<div class="has-error">
				<form:errors path="email" class="help-inline" />
			</div>
		</div>
		<br>
		
		<div class="field">
			<h5>Department: </h5>
			<form:input type="text" path="department" id="department" class="form-control" placeholder="Department" />
			<div class="has-error">
				<form:errors path="department" class="help-inline" />
			</div>
		</div>
		<br>
		
		<div class="field">
			<h5>Position: </h5>
			<form:input type="text" path="position" id="position" class="form-control" placeholder="Position" />
			<div class="has-error">
				<form:errors path="position" class="help-inline" />
			</div>
		</div>
		<br>
		
		<div class="field">
			<h5>Social Insurance Number: </h5>
			<form:input type="text" path="sin" id="sin" class="form-control" placeholder="Social Insurance Number" />
			<div class="has-error">
				<form:errors path="sin" class="help-inline" />
			</div>
		</div>
		<br>
		
		<div class="field">
			<h5>Phone Number: </h5>
			<form:input type="text" path="phoneNumber" id="phoneNumber" class="form-control" placeholder="Phone Number" />
			<div class="has-error">
				<form:errors path="phoneNumber" class="help-inline" />
			</div>
		</div>
		<br>
		
		<div class="field">
			<h5>Salary: </h5>
			<form:input type="text" path="salary" id="salary" class="form-control" placeholder="Salary" />
			<div class="has-error">
				<form:errors path="salary" class="help-inline" />
			</div>
		</div>
		<br>

		<div class="field">
			<h5>Hire Date:</h5>
			<div id="date-container">
				<form:input type="text" path="hireDate" id="hireDate"
					class="form-control" placeholder="Hire Date" />
			</div>
			<div class="has-error">
				<form:errors path="hireDate" class="help-inline" />
			</div>
		</div>
		<br>
		
		<!-- If editing own user, restrict editing role -->
		<c:if test="${loggedinuser!=user.ssoId}">
			<div class="field">
				<h5>Privileges:</h5>
				<form:select path="userProfiles" items="${roles}" multiple="true"
					itemValue="id" itemLabel="type" class="form-control" />
				<div class="has-error">
					<form:errors path="userProfiles" class="help-inline" />
				</div>
			</div>
			<br>
		</c:if>

		<div class="form-actions floatRight" style="margin-right: 15%; padding-bottom: 30px">
			<c:choose>
				<c:when test="${edit}">
					<input type="submit" value="Update" class="btn btn-primary" onclick="isValidDate(document.form1.hireDate)"/> or <a
						href="<c:url value='/list' />">Cancel</a>
				</c:when>
				<c:otherwise>
					<input type="submit" value="Register" class="btn btn-primary" onclick="isValidDate(document.form1.hireDate)"/> or <a
						href="<c:url value='/list' />">Cancel</a>
				</c:otherwise>
			</c:choose>
		</div>
	</form:form>
</div>
	
	<!-- Extra JavaScript/CSS added manually in "Settings" tab -->
	<!-- Include jQuery -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>



	
</body>
</html>