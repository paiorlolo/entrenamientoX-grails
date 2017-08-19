

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ejercicio.label', default: 'Ejercicio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ejercicio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ejercicio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ejercicio">
			
				<g:if test="${ejercicioInstance?.descanso}">
				<li class="fieldcontain">
					<span id="descanso-label" class="property-label"><g:message code="ejercicio.descanso.label" default="Descanso" /></span>
					
						<span class="property-value" aria-labelledby="descanso-label"><g:fieldValue bean="${ejercicioInstance}" field="descanso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ejercicioInstance?.repeticiones}">
				<li class="fieldcontain">
					<span id="repeticiones-label" class="property-label"><g:message code="ejercicio.repeticiones.label" default="Repeticiones" /></span>
					
						<span class="property-value" aria-labelledby="repeticiones-label"><g:fieldValue bean="${ejercicioInstance}" field="repeticiones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ejercicioInstance?.rutina}">
				<li class="fieldcontain">
					<span id="rutina-label" class="property-label"><g:message code="ejercicio.rutina.label" default="Rutina" /></span>
					
						<g:each in="${ejercicioInstance.rutina}" var="r">
						<span class="property-value" aria-labelledby="rutina-label"><g:link controller="rutina" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ejercicioInstance?.series}">
				<li class="fieldcontain">
					<span id="series-label" class="property-label"><g:message code="ejercicio.series.label" default="Series" /></span>
					
						<span class="property-value" aria-labelledby="series-label"><g:fieldValue bean="${ejercicioInstance}" field="series"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ejercicioInstance?.tiempo}">
				<li class="fieldcontain">
					<span id="tiempo-label" class="property-label"><g:message code="ejercicio.tiempo.label" default="Tiempo" /></span>
					
						<span class="property-value" aria-labelledby="tiempo-label"><g:fieldValue bean="${ejercicioInstance}" field="tiempo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ejercicioInstance?.video}">
				<li class="fieldcontain">
					<span id="video-label" class="property-label"><g:message code="ejercicio.video.label" default="Video" /></span>
					
						<span class="property-value" aria-labelledby="video-label"><g:link controller="video" action="show" id="${ejercicioInstance?.video?.id}">${ejercicioInstance?.video?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:ejercicioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ejercicioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
