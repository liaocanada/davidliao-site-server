<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>

<head>
	<title>Resume</title>
	<jsp:include page="resources.jsp" />
</head>

<body>
	<jsp:include page="nav.jsp" />

	<div align="center" style="height: 90%">
		<iframe style="display: block; height: 100%;" width="840px"
			src="https://docs.google.com/document/d/e/2PACX-1vQMTCyyzi0UvXKKeHiyr-h9x9ZcF64iU4Of28JnTw3E9Q-505Ld1C-rAGfBIjrrSirsYRSeFkDfRM3c/pub?embedded=true"></iframe>
	</div>
</body>
</html>