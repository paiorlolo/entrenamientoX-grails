



<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'ejercicio', 'error')} required">
	<label for="ejercicio">
		<g:message code="rutina.ejercicio.label" default="Ejercicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ejercicio" name="ejercicio.id" from="${Ejercicio.list()}" optionKey="id" required="" value="${rutinaInstance?.ejercicio?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="rutina.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${rutinaInstance?.nombre}"/>

</div>

