<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

	<!-- Navigation Bar -->
	<nav class="navbar">
	
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="<c:url value='/home'/>">Home</a>
	    </div>
	    
        <!-- Collect the navs for toggling -->
    	<div class="collapse navbar-collapse" id="navbar-collapse">
    		<ul class="nav navbar-nav navbar-right nav">
				<li><a href=" <c:url value='/resume'/>">Resume</a></li>
				<li><a href=" <c:url value='/achievements'/>">Achievements</a></li>			
				<li><a href=" <c:url value='/projects'/>">Projects</a></li>
				<li><a href=" <c:url value='/contact'/>">Contact</a></li>
			</ul>
	    </div>

      </div>
	</nav>

	<!--  Takes up the space of the fixed navbar -->
	<div style="margin-top: 60px;"></div>

	