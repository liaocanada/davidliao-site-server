<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<title>Resume</title>
<jsp:include page="resources.jsp" />
</head>

<body>
	<jsp:include page="header.jsp" />

	<div align="center" class="layout" style="height: 75%">

		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			If the document is not showing up (on mobile devices), you can also find it 
			<a href="https://drive.google.com/file/d/1eEXQI6-eqNowkoymjpAQOoP2O-jDSFgf/view?usp=sharing">here</a>.
		</div>

		<embed src="<c:url value="/static/DavidLiaoResume.pdf#toolbar=0&navpanes=0"/>" width="840"
			height="100%" alt="pdf"
			pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />

	</div>
</body>
</html>