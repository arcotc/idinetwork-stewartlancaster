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
  <jsp:include page="includes/meta-tags.jsp"/>
  <title>
	<c:choose>
		<c:when test="${not empty page}">${page.title} | </c:when>
		<c:when test="${not empty article}">${article.title} | </c:when>
	</c:choose>
 	<idi:configTag key="site-title"/>
  </title>
<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
</head>

<body>
  <div class="page-container-3">

  	<!-- HEADER -->
	<jsp:include page="includes/navigation1.jsp"/>

    <!-- Sitename -->
		<div class="site-name">
      <p class="title"><a href="/"><idi:configTag key="page-title"/></a></p>
      <p class="subtitle"><a href="/"><idi:configTag key="page-subtitle"/></a></p>
    </div>
    
    <!-- Site slogan -->
		<div class="site-slogan-container">
			<div class="site-slogan">
      	<p class="title"><idi:configTag key="page-tagline-1"/></p>
      	<p class="title"><idi:configTag key="page-tagline-2"/></p>
      </div>
		</div>
    		 						    		 						
    <!-- Header banner -->		 						    		 						
		<div><img class="img-header" src="<idi:configTag key="page-header-image"/>" alt=""/></div>		

	<jsp:include page="includes/navigation2.jsp"/>
    
    <!-- Buffer after header -->    
		<div class="buffer"></div>
		
  	<!-- 	CONTENT -->
		<div class="content3">

	<jsp:include page="includes/mainbody.jsp"/>

    </div>
			
	  <jsp:include page="includes/sidebar.jsp"/>

	  <jsp:include page="includes/footer.jsp"/>
				
  </div>
</body>
</html>