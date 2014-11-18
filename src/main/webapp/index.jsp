<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h3>The text entered in the fields below will be POSTed to a JSP page that displays all values directly in the web page without any escaping or validation.</h3>
		<h3>However, the web site is configured to use the <a href="https://github.com/AutoGeneral/ParameterValidationFilter">Parameter Validation Filter</a>, so the resulting page will not contain XSS code.</h3>
		<h3>OWASP has some <a href="https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet">common XSS filter evasion tests</a> that can be used.</h3>
		<h3>The source code for this web app can be found <a href="https://github.com/mcasperson/ParameterValidationFilterDemo">here</a>.</h3>

		<form action="DisplayPost.jsp" method="POST">
		<p>
			This field accepts free text. You can post in HTML here.
		</p>
		<textarea name="textarea" rows="10" style="width: 100%"></textarea>
		<br/><br/>
		<p>
			This field accepts plain text (i.e. no HTML or encoded text).
		</p>
		<input type="text" name="textfield">		
		<br/><br/>
		<p>
			This is another field just to make sure we are validating all parameters with the chains.
		</p>
		<input type="text" name="textfield2">		
		<br/><br/>
		<p>
			This field only accepts a number. This is a test of the regex matching.
		</p>
		<input type="text" name="textfield3" value="1.23">		
		<br/><br/>
		<p>
			If you have entered any invalid text, pressing the submit button will result in a HTTP 400 response code.
		</p>
		<p>
			Otherwise you should see the text you entered display on the next page.
		</p>
		<input type="submit" value="Submit">
	</form>
	</div>
</body>
</html>