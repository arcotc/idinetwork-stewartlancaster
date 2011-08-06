<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://idinetwork.co.uk/taglibs/idinetwork" prefix="idi"%>
<c:if test="${not empty page}">
  	  <!-- Page title -->		
		  <div class="content3-pagetitle">
		  	${page.title}
		  	<div style="float:right"><a href="http://twitter.com/share?original_referer=http%3A%2F%2F<idi:configTag key="site-url"/>%2Fsite%2F${page.key}&text=Stewart%20Lancaster%20ADI%20%7C%20${page.title}" target="_new"><img src="/static/images/twitter-logo.png" border="0"/></a><a href="http://www.facebook.com/sharer.php?u=http%3A%2F%2F<idi:configTag key="site-url"/>%2Fsite%2F${page.key}" target="_new"><img src="/static/images/facebook-logo.png" border="0"/></a><g:plusone></g:plusone></div>
		  </div>			
                				
			<!-- Text container -->
			<div class="content3-container line-box">
				<div class="content3-container-1col">
					<!--p class="content-title-noshade-size3">Basic overview</p>                            
					<p class="content-subtitle-noshade-size1">Experience freedom</p-->
        	<div class="content-txtbox-noshade">
        		<c:if test="${page.key == 'home'}">
        			<img src="/static/images/logo.png" align="left"/>
        		</c:if>
          		${page.body}
					</div>
				</div>
      </div>
</c:if>
<c:if test="${not empty article}">
  	  <!-- Page title -->		
		  <div class="content3-pagetitle">
		  	${article.title}
		  	<div style="float:right"><a href="http://twitter.com/share?original_referer=http%3A%2F%2F<idi:configTag key="site-url"/>%2Fsite%2F${article.key}&text=Stewart%20Lancaster%20ADI%20%7C%20${article.title}" target="_new"><img src="/static/images/twitter-logo.png" border="0"/></a><a href="http://www.facebook.com/sharer.php?u=http%3A%2F%2F<idi:configTag key="site-url"/>%2Fsite%2F${page.key}" target="_new"><img src="/static/images/facebook-logo.png" border="0"/></a><g:plusone></g:plusone></div>
		  </div>			
                				
			<!-- Text container -->
			<div class="content3-container line-box">
				<div class="content3-container-1col">
					<!--p class="content-title-noshade-size3">Basic overview</p>                            
					<p class="content-subtitle-noshade-size1">Experience freedom</p-->
        	<div class="content-txtbox-noshade">
          		<span class="standard-font">${article.copy}</span>
					</div>
				</div>
      </div>
</c:if>
<c:if test="${not empty page.tags}">
    <idi:articlesTag tags="${page.tags}" name="pageArticles"/>
		<div class="content3-container">
          <c:forEach items="${pageArticles}" var="article" varStatus="loopStatus">
              <div class="line-box">
			    <p class="content-title-noshade-size3">${article.title}</p>
				<!--p class="content-subtitle-noshade-size1">${article.intro}</p-->
				<div class="content-txtbox-noshade">
				<p><c:out value="${fn:substring(article.copy,0,200)}"/>...</p>
                &rsaquo;&rsaquo;&rsaquo;&nbsp;<a href="/site/article/${article.key}">read more ...</a>
				</div>
			  </div>
		  </c:forEach>		
	    </div>
</c:if>