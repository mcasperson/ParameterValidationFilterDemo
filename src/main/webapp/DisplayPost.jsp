<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="bower_components/patternfly/dist/css/patternfly.min.css" rel="stylesheet" media="screen, print">
<link href='css/dsr.css' rel='stylesheet' type='text/css'>
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bower_components/patternfly/dist/js/patternfly.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-pf" role="navigation"> <a class="navbar-brand" href="#">Parameter Validation Filter Test</a> </nav>
	<div id="container" class="container">
		<h1>Parameter Validation Filter Test</h1>
		<h3>If you are seeing this screen, all parameters were determined to be valid.</h3>

		<ul>
			<c:forEach var="par" items="${paramValues}">
				<li>${par.value[0]}</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>