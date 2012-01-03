<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management | Site Navigation</title>
		<link rel="stylesheet" type="text/css" href="/static/styles/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/static/styles/idinetwork.css" />
		
		<script src="/static/js/jquery-1.5.2.min.js"></script>
		<script src="/static/js/jquery-tablesorter.js"></script>
	
	</head>
	<body>
	    <div class="topbar" data-scrollspy="scrollspy" >
	      <div class="topbar-inner">
	        <div class="container">
	          <a class="brand" href="/site/management">Management</a>
	          <ul class="nav">
	            <li><a href="/site/management">Menu</a></li>
	            <li class="active"><a href="/site/management/site-navigation">Site Navigation</a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
    	<div class="container">
		  <div class="page-header">
			<h1>Site Navigation</h1>
			<h6>Configure level 1 and 2 site navigation</h6>
		  </div>
   		  <section id="level1">
		    <div class="page-header">
				<h2>Level 1</h2>
		    </div>
		    <div class="row">
		      <div class="span6">
		        <h3>Create</h3>
				<form class="form-stacked" method="post" action="/site/management/site-navigation/add/top">
					<fieldset>
						<div class="clearfix">
							<label for="title">Title</label>
							<div type="input">
								<input type="text" name="title"/>
							</div>
						</div>
						<div class="clearfix">
							<label for="sortOrder">Sort Order</label>
							<div type="input">
								<input type="text" name="sortOrder"/>
							</div>
						</div>
					</fieldset>
					<div class="actions">							
						<button class="btn primary" type="submit">Add</button>
						<button class="btn" type="reset">Cancel</button>
					</div>
				</form>
		      </div>
		      <div class="span6">
				<h3><c:if test="${empty topSiteNavigation}"><span class="help-block">Navigation has not been defined</span></c:if></h3>
				<c:if test="${not empty topSiteNavigation}">
					<script>
					 jQuery(document).ready(
						function() {
							jQuery("table#sortTableLevel1").tablesorter({ sortList: [[1,0]] });
						});
					</script>
					<table class="zebra-striped" id="sortTableLevel1">
					  <thead>
						<tr>
							<th class="blue header headerSortDown">Title</th>
							<th class="blue header headerSortDown">Order</th>
							<th class="blue header">Available Actions</th>
						</tr>
					  </thead>
					  <tbody>
						<c:forEach items="${topSiteNavigation}" var="navigation">
							<tr>
								<td>${navigation.title}</td>
								<td>${navigation.sortOrder}</td>
								<td>
									<form action="/site/management/site-navigation/delete/top/${navigation.id}" method="POST">
										<button class="btn primary" type="submit">Delete</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					  </tbody>
					</table>
				</c:if>
			  </div>
			</div>
		  </section>
   		  <section id="level2">
		    <div class="page-header">
				<h2>Level 2</h2>
		    </div>
		    <div class="row">
		      <div class="span6">
		        <h3>Create</h3>
				<form class="form-stacked" method="post" action="/site/management/site-navigation/add/side">
					<fieldset>
						<div class="clearfix">
							<label for="title">Title</label>
							<div type="input">
								<input type="text" name="title"/>
							</div>
						</div>
						<div class="clearfix">
							<label for="sortOrder">Sort Order</label>
							<div type="input">
								<input type="text" name="sortOrder"/>
							</div>
						</div>
					</fieldset>
					<div class="actions">							
						<button class="btn primary" type="submit">Add</button>
						<button class="btn" type="reset">Cancel</button>
					</div>
				</form>
		      </div>
		      <div class="span6">
				<h3><c:if test="${empty sideSiteNavigation}"><span class="help-block">Navigation has not been defined</span></c:if></h3>
				<c:if test="${not empty sideSiteNavigation}">
					<script>
					 jQuery(document).ready(
						function() {
							jQuery("table#sortTableLevel2").tablesorter({ sortList: [[1,0]] });
						});
					</script>
					<table class="zebra-striped" id="sortTableLevel2">
					  <thead>
						<tr>
							<th class="blue header headerSortDown">Title</th>
							<th class="blue header headerSortDown">Order</th>
							<th class="blue header">Available Actions</th>
						</tr>
					  </thead>
					  <tbody>
						<c:forEach items="${sideSiteNavigation}" var="navigation">
							<tr>
								<td>${navigation.title}</td>
								<td>${navigation.sortOrder}</td>
								<td>
									<form action="/site/management/site-navigation/delete/side/${navigation.id}" method="POST">
										<button class="btn primary" type="submit">Delete</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					  </tbody>
					</table>
				</c:if>
			  </div>
			</div>
		  </section>
   		  <ul class="breadcrumb">
   		  	<li>Management <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management">Menu</a> <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management/site-navigation">Site Navigation</a></li>
   		  </ul>
		</div>
	</body>
</html>