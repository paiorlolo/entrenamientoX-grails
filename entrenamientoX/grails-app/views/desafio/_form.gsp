



<div class="fieldcontain ${hasErrors(bean: desafioInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="desafio.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${desafioInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: desafioInstance, field: 'puntaje', 'error')} required">
	<label for="puntaje">
		<g:message code="desafio.puntaje.label" default="Puntaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="puntaje" value="${fieldValue(bean: desafioInstance, field: 'puntaje')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: desafioInstance, field: 'tag', 'error')} required">
	<label for="tag">
		<g:message code="desafio.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tag" required="" value="${desafioInstance?.tag}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: desafioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="desafio.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${Usuario.list()}" optionKey="id" required="" value="${desafioInstance?.usuario?.id}" class="many-to-one"/>

</div>

