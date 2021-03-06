
<%@ page import="testapp.Album" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-album" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-album" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list album">
			
				<g:if test="${albumInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="album.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${albumInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="album.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${albumInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="album.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${albumInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.artist}">
				<li class="fieldcontain">
					<span id="artist-label" class="property-label"><g:message code="album.artist.label" default="Artist" /></span>
					
						<span class="property-value" aria-labelledby="artist-label"><g:link controller="artist" action="show" id="${albumInstance?.artist?.id}">${albumInstance?.artist?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="album.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${albumInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.genre}">
				<li class="fieldcontain">
					<span id="genre-label" class="property-label"><g:message code="album.genre.label" default="Genre" /></span>
					
						<span class="property-value" aria-labelledby="genre-label"><g:fieldValue bean="${albumInstance}" field="genre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="album.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${albumInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.songs}">
				<li class="fieldcontain">
					<span id="songs-label" class="property-label"><g:message code="album.songs.label" default="Songs" /></span>
					
						<g:each in="${albumInstance.songs}" var="s">
						<span class="property-value" aria-labelledby="songs-label"><g:link controller="song" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${albumInstance?.id}" />
					<g:link class="edit" action="edit" id="${albumInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
