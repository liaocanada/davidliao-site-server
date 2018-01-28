<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>News</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet" />
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- Navigation Bar -->
	<nav class="navbar" style="padding:5px 8%;">
		<ul class="nav navbar-nav">
			<li><a href="<c:url value='/home'/>">Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
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

	<h2 style="font-size: 70px; color: #6ea6ca; text-align: center">NEWS</h2>
	<div
		style="height: 5px; width: 20%; background-color: #6ea6ca; margin: 0 auto;">
	</div>
	<div align="center">Click on the image to read the news:</div>

	<div class="container" style="width: 100%; margin: auto;">
		<!-- Images for the articles, when the image is clicked, it goes to a specific part of the page with the news for that image -->
		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="#Stock"> <img
						src="<c:url value='/static/images/news/Stock.png'/>"
						style="width: 100%;">
					</a>

				</div>
			</div>

			<div class="col-md-4">
				<div class="thumbnail">
					<a href="#Money"> <img
						src="<c:url value='/static/images/news/Money.png' />"
						style="width: 100%">
					</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="thumbnail">
					<a href="#Mexico"> <img
						src="<c:url value='/static/images/news/Mexico.png' />"
						style="width: 100%">
					</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="thumbnail">
					<a href="#Airplane"> <img
						src="<c:url value='/static/images/Airplane.png' />"
						style="width: 100%">
					</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="thumbnail">
					<a href="#Partner"> <img
						src="<c:url value='/static/images/news/Partner.png' />"
						style="width: 100%">
					</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="thumbnail">
					<a href="#Warning"> <img
						src="<c:url value='/static/images/news/Warning.png' />"
						style="width: 100%">
					</a>
				</div>
			</div>

		</div>
<!-- Articles for each piece of news  -->
		<h2 id="Stock">5186180 Canada Corp Stocks up 20%</h2>
		<p>5186180 Canada Corp.(NASDAQ:5186180) has been loved by Wall
			Street since day one. After pricing its IPO at $14, 5186180's stock
			price flew higher by nearly 70% in its first day of trading. Shares
			went wild again after its first earnings report, running from sub-$20
			to almost $50 in three days.</p>


		<h2 id="Money">Quarter 3 Financial Documents Released</h2>
		<p>Revenues for the third quarter of 2017 were 11 percent higher
			compared to the second quarter of 2017, reflecting increased demand
			for our products and services. Our overall consolidated gross margin
			of 55.1 percent for the third quarter of 2017 was higher compared to
			50.7 percent for the second quarter of 2017 and reflects margin
			expansion for both DRAM and Trade NAND products supported by ongoing
			strength in the pricing environment and a favorable product mix.
			Investments in capital expenditures, net of amounts funded by
			partners, were $1.92 billion for the first quarter of 2018. During
			the quarter, we raised $1.36 billion from an equity offering and
			repurchased or converted $2.36 billion principal amount of our debt,
			lowering our total face value debt to $9.34 billion exiting the
			quarter. We ended the first quarter with cash, marketable
			investments, and restricted cash of $6.61 billion.</p>


		<h2 id="Mexico">1 More Office Built in Mexico City</h2>
		<p>Revenues for the third quarter of 2017 were 11 percent higher
			compared to the second quarter of 2017, reflecting increased demand
			for our products and services. Our overall consolidated gross margin
			of 55.1 percent for the third quarter of 2017 was higher compared to
			50.7 percent for the second quarter of 2017 and reflects margin
			expansion for both DRAM and Trade NAND products supported by ongoing
			strength in the pricing environment and a favorable product mix.
			Investments in capital expenditures, net of amounts funded by
			partners, were $1.92 billion for the first quarter of 2018. During
			the quarter, we raised $1.36 billion from an equity offering and
			repurchased or converted $2.36 billion principal amount of our debt,
			lowering our total face value debt to $9.34 billion exiting the
			quarter. We ended the first quarter with cash, marketable
			investments, and restricted cash of $6.61 billion.</p>


		<h2 id="Airplane">Mr. George Liao will travel to Spain to do
			International Business</h2>
		<p>Revenues for the third quarter of 2017 were 11 percent higher
			compared to the second quarter of 2017, reflecting increased demand
			for our products and services. Our overall consolidated gross margin
			of 55.1 percent for the third quarter of 2017 was higher compared to
			50.7 percent for the second quarter of 2017 and reflects margin
			expansion for both DRAM and Trade NAND products supported by ongoing
			strength in the pricing environment and a favorable product mix.
			Investments in capital expenditures, net of amounts funded by
			partners, were $1.92 billion for the first quarter of 2018. During
			the quarter, we raised $1.36 billion from an equity offering and
			repurchased or converted $2.36 billion principal amount of our debt,
			lowering our total face value debt to $9.34 billion exiting the
			quarter. We ended the first quarter with cash, marketable
			investments, and restricted cash of $6.61 billion.</p>


		<h2 id="Partner">Mr. George Liao Promotes 5 more to Partners</h2>
		<p>Revenues for the third quarter of 2017 were 11 percent higher
			compared to the second quarter of 2017, reflecting increased demand
			for our products and services. Our overall consolidated gross margin
			of 55.1 percent for the third quarter of 2017 was higher compared to
			50.7 percent for the second quarter of 2017 and reflects margin
			expansion for both DRAM and Trade NAND products supported by ongoing
			strength in the pricing environment and a favorable product mix.
			Investments in capital expenditures, net of amounts funded by
			partners, were $1.92 billion for the first quarter of 2018. During
			the quarter, we raised $1.36 billion from an equity offering and
			repurchased or converted $2.36 billion principal amount of our debt,
			lowering our total face value debt to $9.34 billion exiting the
			quarter. We ended the first quarter with cash, marketable
			investments, and restricted cash of $6.61 billion.</p>


		<h2 id="Warning">Team Meeting for Testing Department Friday,
			January 10</h2>
		<p>Revenues for the third quarter of 2017 were 11 percent higher
			compared to the second quarter of 2017, reflecting increased demand
			for our products and services. Our overall consolidated gross margin
			of 55.1 percent for the third quarter of 2017 was higher compared to
			50.7 percent for the second quarter of 2017 and reflects margin
			expansion for both DRAM and Trade NAND products supported by ongoing
			strength in the pricing environment and a favorable product mix.
			Investments in capital expenditures, net of amounts funded by
			partners, were $1.92 billion for the first quarter of 2018. During
			the quarter, we raised $1.36 billion from an equity offering and
			repurchased or converted $2.36 billion principal amount of our debt,
			lowering our total face value debt to $9.34 billion exiting the
			quarter. We ended the first quarter with cash, marketable
			investments, and restricted cash of $6.61 billion.</p>


	</div>


</body>

</html>