<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management | Pages</title>
		<link rel="stylesheet" type="text/css" href="/static/styles/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/static/styles/idinetwork.css" />
		<script type="text/javascript" src="/static/ckeditor/ckeditor.js"></script>
		
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
	            <li class="active"><a href="/site/management/pages">Pages</a></li>
	          </ul>
	        </div>
	      </div>
	    </div>
    	<div class="container">
		  <div class="page-header">
			<h1>Pages</h1>
			<h6>Manage the pages on the site</h6>
		  </div>
	      <div class="row">
		      <div class="span10">
		        <h3>Create</h3>
				<form class="form-stacked" method="post" action="/site/management/pages/edit">
					<input type="hidden" name="id" value="${page.id}"/>
					<fieldset>
						<div class="clearfix">
							<label for="title">Title</label>
							<div type="input">
								<input type="text" name="title" value="${page.title}"/>
							</div>
						</div>
						<div class="clearfix">
							<label for="linkTitle">Link</label>
							<div type="input">
								<input type="text" name="linkTitle" value="${page.key}"/>
							</div>
						</div>
						<div class="clearfix">
							<label for="linkTitle">Body</label>
							<div type="input">
								<textarea cols="80" id="body" name="body" rows="10" class="xxlarge">${page.body}</textarea>
								<script type="text/javascript">
									//<![CDATA[
									CKEDITOR.replace( 'body', { toolbar : [ ['Source'], 
									                                    [ 'Bold','Italic','Underline','Strike','-','Subscript','Superscript' ],
								                                        ['NumberedList','BulletedList','-','Outdent','Indent'],
								                                        ['Link','Unlink','Anchor'],
								                                        ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
								                                        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'] ] } );
									//]]>
								</script>
							</div>
						</div>
						<div class="clearfix">
							<label for="linkTitle">Meta Description</label>
							<div type="input">
								<textarea rows="3" cols="40" name="metaDescription" class="xxlarge">${page.metaDescription}</textarea>
							</div>
						</div>
						<div class="clearfix">
							<label for="metaKeywords">Meta Keywords</label>
							<div type="input">
								<input type="text" name="metaKeywords" value="${page.metaKeywords}"/>
							</div>
						</div>
						<div class="clearfix">
							<label for="tags">Tags</label>
							<div type="input">
								<input type="text" name="tags" value="${page.tags}"/>
							</div>
						</div>
						<div class="clearfix">
							<label for="templateName">Template Name</label>
							<div type="input">
								<select name="templateName" class="medium">
									<option value="firstLevelPage" <c:if test="${page.templateName == 'firstLevelPage'}">selected</c:if>>Default</option>
									<option value="secondLevelPage" <c:if test="${page.templateName == 'secondLevelPage'}">selected</c:if>>No news</option>
								</select>
							</div>
						</div>
					</fieldset>
					<div class="actions">							
						<button class="btn primary" type="submit">Save</button>
						<button class="btn" type="reset">Undo</button>
					</div>
				</form>
		      </div>
		  </div>
   		  <ul class="breadcrumb">
   		  	<li>Management <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management">Menu</a> <span class="divider"/>/</span></li>
   		  	<li><a href="/site/management/pages">Pages</a></li>
   		  </ul>
		</div>
	</body>
</html>