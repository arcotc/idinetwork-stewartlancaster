<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management | Pages | 
			<c:choose>
				<c:when test="${pageConfirmation == 'true'}">Confirmation</c:when>
				<c:otherwise>Error</c:otherwise>
			</c:choose>
		</title>
		<link rel="stylesheet" type="text/css" href="/static/styles/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/static/styles/idinetwork.css" />
	</head>
	<body>
	    <div class="topbar" data-scrollspy="scrollspy" >
	      <div class="topbar-inner">
	        <div class="container">
	          <a class="brand" href="/site/management">Management</a>
	          <ul class="nav">
	            <li><a href="/site/management">Menu</a></li>
	            <li class="active"><a href="/site/management/pages">Pages</a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
    	<div class="container">
   		  <section id="menu">
		    <div class="page-header">
				<h1>
					<c:choose>
						<c:when test="${pageConfirmation == 'true'}">Confirmation</c:when>
						<c:otherwise>Error</c:otherwise>
					</c:choose>
				</h1>
		    </div>
		    <div class="row">
		      <div class="span12">
				<c:choose>
					<c:when test="${pageConfirmation == 'true'}">
						<div class="clearfix">
							<p>
								Your change has been applied.
							</p>
						</div>
					</c:when>
					<c:otherwise>
						<div class="clearfix error">
							<p>
								${errorMsg}
							</p>
							<p>
								An error occurred, please retry the operation or get in touch with customer support.
							</p>
						</div>
					</c:otherwise>
				</c:choose>
			  </div>
			</div>
		  </section>
   		  <ul class="breadcrumb">
   		  	<li>Management <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management">Menu</a> <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management/pages">Pages</a></li>
   		  </ul>
		</div>
	</body>
</html>