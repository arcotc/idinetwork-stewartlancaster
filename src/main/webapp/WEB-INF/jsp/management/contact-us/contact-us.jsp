<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management | Contact Us</title>
	</head>
	<body>
		<h1>Contact Us</h1>
		<table>
			<tr>
				<td width="50%">
					<form method="post" action="/site/management/contact-us/add">
						From Email Address(es): <input type="text" name="fromEmailAddress" value="${fromEmailAddress}"/><br/>
						<i>This must be the email address of the Google App Engine Account, <b></b>do not change</b></i><br/>
						<br/>
						To Email Address(es): <input type="text" name="toEmailAddresses" value="${toEmailAddresses}"/><br/>
						<i>To send to more than one email address separate each address with a semi-colon, e.g. me@test.com;you@test.com</i><br/>
						<input type="submit" value="Save"/>
					</form>
				</td>
			</tr>
		</table>
		<br/>
		Return to <a href="/site/management">management menu</a>.
	</body>
</html>