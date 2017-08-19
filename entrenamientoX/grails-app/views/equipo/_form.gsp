



<div class="fieldcontain ${hasErrors(bean: equipoInstance, field: 'codigoRegistro', 'error')} required">
	<label for="codigoRegistro">
		<g:message code="equipo.codigoRegistro.label" default="Codigo Registro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoRegistro" required="" value="${equipoInstance?.codigoRegistro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipoInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="equipo.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${equipoInstance?.color}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipoInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="equipo.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${Empresa.list()}" optionKey="id" required="" value="${equipoInstance?.empresa?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipoInstance, field: 'puntaje', 'error')} required">
	<label for="puntaje">
		<g:message code="equipo.puntaje.label" default="Puntaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="puntaje" value="${fieldValue(bean: equipoInstance, field: 'puntaje')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipoInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="equipo.usuario.label" default="Usuario" />
		
	</label>
	<g:select name="usuario" from="${Usuario.list()}" multiple="multiple" optionKey="id" size="5" value="${equipoInstance?.usuario*.id}" class="many-to-many"/>

</div>

