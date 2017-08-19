

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.altura}">
				<li class="fieldcontain">
					<span id="altura-label" class="property-label"><g:message code="usuario.altura.label" default="Altura" /></span>
					
						<span class="property-value" aria-labelledby="altura-label"><g:fieldValue bean="${usuarioInstance}" field="altura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.desafioVigente}">
				<li class="fieldcontain">
					<span id="desafioVigente-label" class="property-label"><g:message code="usuario.desafioVigente.label" default="Desafio Vigente" /></span>
					
						<g:each in="${usuarioInstance.desafioVigente}" var="d">
						<span class="property-value" aria-labelledby="desafioVigente-label"><g:link controller="desafioVigente" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="usuario.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${usuarioInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.plan}">
				<li class="fieldcontain">
					<span id="plan-label" class="property-label"><g:message code="usuario.plan.label" default="Plan" /></span>
					
						<g:each in="${usuarioInstance.plan}" var="p">
						<span class="property-value" aria-labelledby="plan-label"><g:link controller="plan" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.puntaje}">
				<li class="fieldcontain">
					<span id="puntaje-label" class="property-label"><g:message code="usuario.puntaje.label" default="Puntaje" /></span>
					
						<span class="property-value" aria-labelledby="puntaje-label"><g:fieldValue bean="${usuarioInstance}" field="puntaje"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="usuario.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${usuarioInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
