

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'desafio.label', default: 'Desafio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-desafio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-desafio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'desafio.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="puntaje" title="${message(code: 'desafio.puntaje.label', default: 'Puntaje')}" />
					
						<g:sortableColumn property="tag" title="${message(code: 'desafio.tag.label', default: 'Tag')}" />
					
						<th><g:message code="desafio.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${desafioInstanceList}" status="i" var="desafioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${desafioInstance.id}">${fieldValue(bean: desafioInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: desafioInstance, field: "puntaje")}</td>
					
						<td>${fieldValue(bean: desafioInstance, field: "tag")}</td>
					
						<td>${fieldValue(bean: desafioInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${desafioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
