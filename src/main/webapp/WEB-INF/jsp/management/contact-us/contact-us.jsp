<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management | Contact Us</title>
		<link rel="stylesheet" type="text/css" href="/static/styles/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/static/styles/idinetwork.css" />
	</head>
	<body>
	    <div class="topbar" data-scrollspy="scrollspy" >
	      <div class="topbar-inner">
	        <div class="container">
	          <a class="brand" href="#">Management</a>
	          <ul class="nav">
	            <li><a href="/site/management">Menu</a></li>
	            <li class="active"><a href="/site/management/contact-us">Contact Us</a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
    	<div class="container">
   		  <section id="menu">
		    <div class="page-header">
				<h1>Contact Us</h1>
				<h6>Set up the response email address(es) for your contact us form</h6>
		    </div>
		    <div class="row">
		      <div class="span12">
				<form class="form-stacked" method="post" action="/site/management/contact-us/add">
					<fieldset>
						<div class="clearfix">
							<label for="fromEmailAddress">From Email Address(es)</label>
							<div class="input">
								<input class="xlarge" type="text" name="fromEmailAddress" id="fromEmailAddress" value="${fromEmailAddress}"/>
							</div>
							<div class="help-block">
								This must be the email address of the Google App Engine Account, <b></b>do not change</b>
							</div>
						</div>
						
						<div class="clearfix">
							<label for="toEmailAddress">To Email Address(es)</label>
							<div class="input">
								<input type="text" name="toEmailAddresses" id="toEmailAddresses" value="${toEmailAddresses}"/>
							</div>
							<div class="help-block">
								To send to more than one email address separate each address with a semi-colon, e.g. me@test.com;you@test.com
							</div>
						</div>
					</fieldset>
					<div class="actions">							
						<button class="btn primary" type="submit">Save</button>
						<button class="btn" type="reset">Cancel</button>
					</div>
				</form>
			  </div>
			</div>
		  </section>
   		  <ul class="breadcrumb">
   		  	<li>Management <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management">Menu</a> <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management/contact-us">Contact Us</a></li>
   		  </ul>
		</div>
	</body>
</html>