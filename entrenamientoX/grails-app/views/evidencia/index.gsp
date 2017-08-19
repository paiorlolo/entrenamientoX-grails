

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evidencia.label', default: 'Evidencia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-evidencia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evidencia" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'evidencia.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="estaAprobado" title="${message(code: 'evidencia.estaAprobado.label', default: 'Esta Aprobado')}" />
					
						<g:sortableColumn property="foto" title="${message(code: 'evidencia.foto.label', default: 'Foto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${evidenciaInstanceList}" status="i" var="evidenciaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${evidenciaInstance.id}">${fieldValue(bean: evidenciaInstance, field: "descripcion")}</g:link></td>
					
						<td><g:formatBoolean boolean="${evidenciaInstance.estaAprobado}" /></td>
					
						<td>${fieldValue(bean: evidenciaInstance, field: "foto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${evidenciaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
