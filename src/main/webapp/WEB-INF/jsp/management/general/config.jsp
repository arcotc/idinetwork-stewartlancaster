<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management | General Configuration</title>
	</head>
	<body>
		<h1>General Configuration</h1>
		<table>
			<tr>
				<td width="50%">
					<c:forEach items="${config}" var="config">
						<form method="post" action="/site/management/general/add">
							Key: <input type="text" name="key" value="${config.key}"/> Value: <input type="text" name="value" value="${config.value}"/> <input type="submit" value="update"/>
						</form>
					</c:forEach>
					<form method="post" action="/site/management/general/add">
						Key: <input type="text" name="key"/> Value: <input type="text" name="value"/> <input type="submit" value="add"/>
					</form>
				</td>
			</tr>
		</table>
		<br/>
		Return to <a href="/site/management">management menu</a>.
	</body>
</html>