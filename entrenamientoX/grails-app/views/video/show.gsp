

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-video" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list video">
			
				<g:if test="${videoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="video.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${videoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.ejercicio}">
				<li class="fieldcontain">
					<span id="ejercicio-label" class="property-label"><g:message code="video.ejercicio.label" default="Ejercicio" /></span>
					
						<g:each in="${videoInstance.ejercicio}" var="e">
						<span class="property-value" aria-labelledby="ejercicio-label"><g:link controller="ejercicio" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.link}">
				<li class="fieldcontain">
					<span id="link-label" class="property-label"><g:message code="video.link.label" default="Link" /></span>
					
						<span class="property-value" aria-labelledby="link-label"><g:fieldValue bean="${videoInstance}" field="link"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.tag}">
				<li class="fieldcontain">
					<span id="tag-label" class="property-label"><g:message code="video.tag.label" default="Tag" /></span>
					
						<span class="property-value" aria-labelledby="tag-label"><g:fieldValue bean="${videoInstance}" field="tag"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
