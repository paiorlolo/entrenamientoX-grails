

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medicionPrueba.label', default: 'MedicionPrueba')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-medicionPrueba" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-medicionPrueba" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list medicionPrueba">
			
				<g:if test="${medicionPruebaInstance?.estocadas}">
				<li class="fieldcontain">
					<span id="estocadas-label" class="property-label"><g:message code="medicionPrueba.estocadas.label" default="Estocadas" /></span>
					
						<span class="property-value" aria-labelledby="estocadas-label"><g:fieldValue bean="${medicionPruebaInstance}" field="estocadas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicionPruebaInstance?.flexiones}">
				<li class="fieldcontain">
					<span id="flexiones-label" class="property-label"><g:message code="medicionPrueba.flexiones.label" default="Flexiones" /></span>
					
						<span class="property-value" aria-labelledby="flexiones-label"><g:fieldValue bean="${medicionPruebaInstance}" field="flexiones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicionPruebaInstance?.fondos}">
				<li class="fieldcontain">
					<span id="fondos-label" class="property-label"><g:message code="medicionPrueba.fondos.label" default="Fondos" /></span>
					
						<span class="property-value" aria-labelledby="fondos-label"><g:fieldValue bean="${medicionPruebaInstance}" field="fondos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicionPruebaInstance?.plancha}">
				<li class="fieldcontain">
					<span id="plancha-label" class="property-label"><g:message code="medicionPrueba.plancha.label" default="Plancha" /></span>
					
						<span class="property-value" aria-labelledby="plancha-label"><g:fieldValue bean="${medicionPruebaInstance}" field="plancha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicionPruebaInstance?.sentadillas}">
				<li class="fieldcontain">
					<span id="sentadillas-label" class="property-label"><g:message code="medicionPrueba.sentadillas.label" default="Sentadillas" /></span>
					
						<span class="property-value" aria-labelledby="sentadillas-label"><g:fieldValue bean="${medicionPruebaInstance}" field="sentadillas"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:medicionPruebaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${medicionPruebaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
