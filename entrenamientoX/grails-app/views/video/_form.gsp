



<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="video.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${videoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'ejercicio', 'error')} ">
	<label for="ejercicio">
		<g:message code="video.ejercicio.label" default="Ejercicio" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${videoInstance?.ejercicio?}" var="e">
    <li><g:link controller="ejercicio" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="ejercicio" action="create" params="['video.id': videoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ejercicio.label', default: 'Ejercicio')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'link', 'error')} required">
	<label for="link">
		<g:message code="video.link.label" default="Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="link" required="" value="${videoInstance?.link}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'tag', 'error')} required">
	<label for="tag">
		<g:message code="video.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tag" required="" value="${videoInstance?.tag}"/>

</div>

