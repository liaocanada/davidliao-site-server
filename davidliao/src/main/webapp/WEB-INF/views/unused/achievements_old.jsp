<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<html>

<head>
	<title>My Achievements</title>
	<jsp:include page="resources.jsp" />
</head>

<body>
	<jsp:include page="nav.jsp" />
	
	<!-- Clients Description  -->
	<div style="margin: 20px 100px;">

		<div class="container text-left" style="padding: 0px 20%">
			<h2 class="text-center" style="font-size: 70px; color: #6ea6ca">My Achievements</h2>
			
			<div
				style="height: 5px; width: 30%; background-color: #6ea6ca; margin: 0 auto;">
			</div>
			<br>
		</div>

		<div class="container custom-text" style="margin: auto; width: 400px;">
			<ul>
				<li>Oracle Certified Associate Java SE 8 Programmer</li>
				<li>Passed AP Computer Science exam with a score of 5</li>
				<li>Grade 11 - Outstanding Achievement in Computer Engineering</li>
				<li>Grade 11 - Silver Medal (> 90 average)</li>
				<li>Grade 10 - Outstanding Achievement in Guitar</li>
				<li>Grade 10 - Silver Medal (> 90 average)</li>
				<li>Emergency First Aid &amp; CPR - C</li>
			</ul>
 		<img src="<c:url value="/static/images/achievements/oracle.jpg" />" style="width: 50%;">
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

	</div>
 --%>
 	<div class="col-md-4 thumbnail" style="margin: 0 auto; width: 60%;">
 	</div>
 
 </body>
</html>