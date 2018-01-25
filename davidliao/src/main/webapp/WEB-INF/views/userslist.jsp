<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en" style="height:90%">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users List</title>
<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="<c:url value='/static/css/bootstrap-datepicker3.css' />" rel="stylesheet" />
<script src="<c:url value='/static/js/bootstrap-datepicker.js' />"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>

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
	<div style="margin-top: 40px;"></div>
	
	<br>
	<form action="<c:url value='/list'/> " method="get">
	<!-- Filter Side Bar  -->
	<div id="filtersBar" class="bg-info col-sm-6" style="width: 17%; height: 100%; font-size:small; margin-right: 1%; overflow: auto;">

		<h3 class="text-center">Filters</h3>

		<div class="form-group">
			<label for="sel1">Sort By:</label> 
			<select class="form-control" id="sel1" name="sortParam">
				<option value="firstName">First Name</option>
				<option value="lastName">Last Name</option>
				<option value="ssoId">SSO ID</option>
				<option value="salary">Salary</option>
				<option value="hireDate">Hire Date</option>
			</select>
			<br>
			<label class="radio-inline"> 
				<input type="radio" name="lowToHigh" value="true" checked>Ascending
			</label> 
			<label class="radio-inline"> 
				<input type="radio" name="lowToHigh" value="false">Descending
			</label>
		</div>
		
		<div class="form-group has-feedback">
			<b>Email:</b> 
			<input id="email" type="text" class="form-control" name="email" placeholder="Email"/>
				<div id="hint-message" class="alert alert-dismissable">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Hint:</strong> use the % symbol to specify any value. <br>
					Ex: %@gmail.com.
				</div>
			</div>
		
		<div class="form-group">
			<label for="departments">Departments:</label>
			<input type="text" class="departments form-control" placeholder="Departments" name="department" id="departments"/>
		</div>

		<b>Salary Range:</b> <br>

		<div class="form-group has-feedback">
			<b>Min:</b> 
			<input type="text" class="form-control" name="minSalary" placeholder="Minimum Range" data-validation="number" data-validation-allowing="float" data-validation-optional="true"/>
			<i class="form-control-feedback" ></i>
		</div>

		<div class="form-group has-feedback">
			<b>Max:</b>
			<input type="text" class="form-control" name="maxSalary" placeholder="Maximum Range" data-validation="number" data-validation-allowing="float" data-validation-optional="true"/>
			<i class="form-control-feedback" ></i>
		</div>

		<b>Hire Date:</b> <br>

		<div>
			<b>From:</b>
			<div class="input-group" id="date-container">
				<input class="form-control" name="startDate"
					placeholder="Begin Date" type="text" data-provide="datepicker" data-validation="birthdate" data-validation-format="yyyy/mm/dd" data-validation-optional="true"/>
			</div>
		</div>

		<br>

		<div>
			<b>To:</b>
			<div class="input-group" id="date-container">
				<input class="form-control" name="endDate"
					placeholder="End Date" type="text" data-provide="datepicker" data-validation="birthdate" data-validation-format="yyyy/mm/dd" data-validation-optional="true"/>
			</div>
		</div>

		<p align="center">
			<br>
			<button class="btn-primary btn-lg" type="submit">Update</button>
		</p>
	</div>
</form>

<div class="col-md-9" style="text-align: center; margin-bottom: 10px; padding:0">
	<h1>Users</h1>
</div>
		  	
<div class="row">
	<div style="overflow-y: scroll; width: 80%;">
		<table class="table table-hover table-striped" style="font-size:small; margin-bottom: 0px;">
			<thead>
				<tr style="white-space:nowrap; background-color: #357BB5; color: white;">
					<th>First Name</th>
					<th>Last Name</th>
					<th>SSO ID</th>
					<th>Department</th>
					<th>Position</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>SIN</th>
					<th>Salary</th>
					<th>Hire Date</th>
					<th>IP</th>
					<!-- Only Admin and DBA has the edit button -->
					<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
						<th width="100">Edit</th>
					</sec:authorize>
					<!-- Only Admin has the delete button -->
					<sec:authorize access="hasRole('ADMIN')">
						<th width="100">Delete</th>
					</sec:authorize>


			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr style="white-space:nowrap;">
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.ssoId}</td>
						<td>${user.department}</td>
						<td>${user.position}</td>
						<td>${user.phoneNumber}</td>
<%-- 						<c:out value="(${fn:substring(phone, 0, 4)}) ${fn:substring(phone, 4, fn:length(phone))}"/> --%>
						<td>${user.email}</td>
						<td>${user.sin}</td>
						<td>${user.salary}</td>
						<!--  Format date to yyyy/MM/dd -->
						<fmt:formatDate value="${user.hireDate}" var="date1" type="date" pattern="yyyy/MM/dd" />
						<td>${date1}</td>
						<td>${user.ip}</td>
						<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/edit-user-${user.ssoId}' />"
								class="btn btn-primary btn-xs">Edit </a></td>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
							<!--  Delete button; disabled on your own account -->
						<td>
							<c:if test="${loggedinuser!=user.ssoId}">
								<a href="<c:url value='/delete-user-${user.ssoId}' />" 
								class="btn btn-danger btn-xs">Delete</a>
							</c:if>
						</td>
						</sec:authorize>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<sec:authorize access="hasRole('ADMIN')">
			<a href="<c:url value='/newuser' />" class="btn btn-primary btn-small" role="button" style="margin: 1%">
				<b>+</b> Add a user
			</a>
		</sec:authorize>
	</div>
</div>

  <script>
  $(function () {
	    var availableTags = [
	        "Accounting and Finance",
	        "Administrator",
	        "Developer",
	        "HR Management",
	        "Marketing"
	    ];
	    $(".departments").autocomplete({
	        source: availableTags,
	        minLength: 0
	    }).bind('focus', function () {
	        $(this).autocomplete("search");
	    });
	});
  </script>
  
<script>

  $.validate({
    modules : 'date, security',
    onModulesLoaded : function() {
      $('#country').suggestCountry();
    }
  });

  // Restrict presentation length
  $('#presentation').restrictLength( $('#pres-max-length') );

</script>
	
</body>
</html>