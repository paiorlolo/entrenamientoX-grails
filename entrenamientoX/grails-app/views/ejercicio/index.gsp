

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ejercicio.label', default: 'Ejercicio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ejercicio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ejercicio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descanso" title="${message(code: 'ejercicio.descanso.label', default: 'Descanso')}" />
					
						<g:sortableColumn property="repeticiones" title="${message(code: 'ejercicio.repeticiones.label', default: 'Repeticiones')}" />
					
						<g:sortableColumn property="series" title="${message(code: 'ejercicio.series.label', default: 'Series')}" />
					
						<g:sortableColumn property="tiempo" title="${message(code: 'ejercicio.tiempo.label', default: 'Tiempo')}" />
					
						<th><g:message code="ejercicio.video.label" default="Video" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ejercicioInstanceList}" status="i" var="ejercicioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ejercicioInstance.id}">${fieldValue(bean: ejercicioInstance, field: "descanso")}</g:link></td>
					
						<td>${fieldValue(bean: ejercicioInstance, field: "repeticiones")}</td>
					
						<td>${fieldValue(bean: ejercicioInstance, field: "series")}</td>
					
						<td>${fieldValue(bean: ejercicioInstance, field: "tiempo")}</td>
					
						<td>${fieldValue(bean: ejercicioInstance, field: "video")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ejercicioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
