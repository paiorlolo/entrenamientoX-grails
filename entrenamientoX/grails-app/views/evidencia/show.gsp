

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evidencia.label', default: 'Evidencia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evidencia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evidencia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evidencia">
			
				<g:if test="${evidenciaInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="evidencia.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${evidenciaInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${evidenciaInstance?.estaAprobado}">
				<li class="fieldcontain">
					<span id="estaAprobado-label" class="property-label"><g:message code="evidencia.estaAprobado.label" default="Esta Aprobado" /></span>
					
						<span class="property-value" aria-labelledby="estaAprobado-label"><g:formatBoolean boolean="${evidenciaInstance?.estaAprobado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${evidenciaInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="evidencia.foto.label" default="Foto" /></span>
					
						<span class="property-value" aria-labelledby="foto-label"><g:fieldValue bean="${evidenciaInstance}" field="foto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:evidenciaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${evidenciaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
