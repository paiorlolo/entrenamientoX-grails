

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-video" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'video.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="link" title="${message(code: 'video.link.label', default: 'Link')}" />
					
						<g:sortableColumn property="tag" title="${message(code: 'video.tag.label', default: 'Tag')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoInstanceList}" status="i" var="videoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoInstance.id}">${fieldValue(bean: videoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: videoInstance, field: "link")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "tag")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
