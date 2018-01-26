<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<html>
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

	<!-- Login container -->
	<div class="login-container">
		<c:url var="loginUrl" value="/login" />
		<form action="${loginUrl}" method="post" class="form-horizontal">
			<!-- If the username or password is incorrect  -->
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Invalid username and password.</p>
				</div>
			</c:if>
			<!-- If just logged out -->
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>You have been logged out successfully.</p>
				</div>
			</c:if>

			<!-- Start of Login Part  -->
			<h2> Welcome! </h2>
			<h5> Please log in to continue, or return to the <a href="<c:url value='/home'/>">home page.</a></h5>
			
			<div class="input-group input-sm">
				<label class="input-group-addon" for="username" ><i class="fa fa-user"></i></label>
				<input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
			</div>
			<div class="input-group input-sm">
				<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
				<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
			</div>
			<div class="input-group input-sm checkbox">
					<label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
			</div>
			<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

			<div class="form-actions">
				<input type="submit" class="btn btn-block btn-primary btn-default" value="Log in">
			</div>
			
		</form>

	</div>

</body>
</html>