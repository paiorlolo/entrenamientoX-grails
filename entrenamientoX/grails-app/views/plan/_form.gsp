



<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'rutina', 'error')} required">
	<label for="rutina">
		<g:message code="plan.rutina.label" default="Rutina" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rutina" name="rutina.id" from="${Rutina.list()}" optionKey="id" required="" value="${planInstance?.rutina?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="plan.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${Usuario.list()}" optionKey="id" required="" value="${planInstance?.usuario?.id}" class="many-to-one"/>

</div>

