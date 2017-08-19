

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'equipo.label', default: 'Equipo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-equipo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-equipo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list equipo">
			
				<g:if test="${equipoInstance?.codigoRegistro}">
				<li class="fieldcontain">
					<span id="codigoRegistro-label" class="property-label"><g:message code="equipo.codigoRegistro.label" default="Codigo Registro" /></span>
					
						<span class="property-value" aria-labelledby="codigoRegistro-label"><g:fieldValue bean="${equipoInstance}" field="codigoRegistro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipoInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="equipo.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${equipoInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipoInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="equipo.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${equipoInstance?.empresa?.id}">${equipoInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipoInstance?.puntaje}">
				<li class="fieldcontain">
					<span id="puntaje-label" class="property-label"><g:message code="equipo.puntaje.label" default="Puntaje" /></span>
					
						<span class="property-value" aria-labelledby="puntaje-label"><g:fieldValue bean="${equipoInstance}" field="puntaje"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="equipo.usuario.label" default="Usuario" /></span>
					
						<g:each in="${equipoInstance.usuario}" var="u">
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:equipoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${equipoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
