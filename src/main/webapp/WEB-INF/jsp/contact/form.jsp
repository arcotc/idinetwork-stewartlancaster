<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://idinetwork.co.uk/taglibs/idinetwork" prefix="idi"%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" media="screen,projection" href="/static/styles/style_screen.css" />
  <link rel="stylesheet" type="text/css" media="print" href="/static/styles/style_print.css" />
  <jsp:include page="../includes/meta-tags.jsp"/>
  <title>
	<c:choose>
		<c:when test="${not empty page}">${page.title} | </c:when>
		<c:when test="${not empty article}">${article.title} | </c:when>
	</c:choose>
 	stewartlancasterdrivingschool.co.uk
  </title>
</head>

<body>
  <div class="page-container-3">

  	<!-- HEADER -->
	<jsp:include page="../includes/navigation1.jsp"/>

    <!-- Sitename -->
		<div class="site-name">
      <p class="title"><a href="index.html">Stewart&bull;Lancaster</a></p>
      <p class="subtitle"><a href="index.html">Driving&bull;School</a></p>
    </div>
    
    <!-- Site slogan -->
		<div class="site-slogan-container">
			<div class="site-slogan">
      	<p class="title">Helping you reach</p>
      	<p class="title">your full potential</p>
      	<!--p class="subtitle">reach you potential</p-->
      	<!--p class="text">Serving the webcommunity<br />with XHTML/CSS designs</p>
        <p class="readmore">&rsaquo;&rsaquo;&rsaquo;&nbsp;<a href="/site/about">Find out more about us</a></p-->
      </div>
		</div>
    		 						    		 						
    <!-- Header banner -->		 						    		 						
		<div><img class="img-header" src="/static/images/header.jpg" alt=""/></div>		

		<div class="buffer"></div>

		<div class="content3">
		  <div class="content3-pagetitle">Contact</div>			
                				
			<!-- Text container -->
			<div class="content3-container line-box">
				<div class="content3-container-1col">
        	<div class="content-txtbox-noshade">
		<idi:contactForm fromEmail="${fromEmail}" toEmail="${toEmail}" confirmationUrl="contact/confirmation" msg="Use the form below to contact us"/>
					</div>
				</div>
      </div>
      </div>
    
    <!-- Buffer after header -->    
		<div class="buffer"></div>
		
  	<!-- 	CONTENT -->
		<div class="content3">

	<jsp:include page="../includes/mainbody.jsp"/>

      <!-- Text container -->
			<!--div class="content3-container">
				<div class="content3-container-3col-left">
					<p class="content-title-noshade-size3">Lorem Ipsum</p>
					<p class="content-subtitle-noshade-size1">Lorem Ipsum</p>
					<div class="content-txtbox-noshade">
						<p>Lorem ipsum dolor sit amet, adipiscing elit, sed diam nonummy nibh euismod.</p>
					</div>
				</div>
			
				<div class="content3-container-3col-middle">
					<p class="content-title-noshade-size3">Lorem Ipsum</p>
					<p class="content-subtitle-noshade-size1">Lorem Ipsum</p>
					<div class="content-txtbox-noshade">
						<p>Lorem ipsum dolor sit amet, adipiscing elit, sed diam nonummy nibh euismod.</p>			 
					</div>
        </div>

				<div class="content3-container-3col-right">
					<p class="content-title-noshade-size3">Lorem Ipsum</p>
					<p class="content-subtitle-noshade-size1">Lorem Ipsum</p>
					<div class="content-txtbox-noshade">
						<p>Lorem ipsum dolor sit amet, adipiscing elit, sed diam nonummy nibh euismod.</p>
					</div>
				</div>
      </div-->
    </div>
			
	  <jsp:include page="../includes/sidebar.jsp"/>

	  <jsp:include page="../includes/footer.jsp"/>
				
  </div>
</body>
</html>