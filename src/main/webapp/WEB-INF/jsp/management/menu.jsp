<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management</title>
		<link rel="stylesheet" type="text/css" href="/static/styles/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/static/styles/idinetwork.css" />
	</head>
	<body>
	    <div class="topbar" data-scrollspy="scrollspy" >
	      <div class="topbar-inner">
	        <div class="container">
	          <a class="brand" href="#">Management</a>
	          <ul class="nav">
	            <li class="active"><a href="#overview">Menu</a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
    	<div class="container">
    		  <ul class="breadcrumb">
    		  	<li>Management <span class="divider"/>/</span></li>
    		  	<li><a href="/site/management">Menu</a></li>
    		  </ul>
    		  <section id="menu">
		    <div class="page-header">
				<h1>Menu</h1>
		    </div>
		    <div class="row">
				<div class="span-one-third">
					<h3><a href="/site/management/contact-us">Contact Us</a></h3>
					<p>Set up the response email address(es) for your contact us form</p>
				</div>
				<div class="span-one-third">
					<h3><a href="/site/management/site-navigation">Site navigation</a></h3>
					<p>Configure level 1 and 2 site navigation</p>
				</div>
				<div class="span-one-third">
					<h3><a href="/site/management/pages">Pages</a></h3>
					<p>Manage the pages on the site</p>
				</div>
			</div>
		  </section>
		</div>
	</body>
</html>