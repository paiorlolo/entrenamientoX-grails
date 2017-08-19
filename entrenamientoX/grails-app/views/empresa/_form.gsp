



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'equipo', 'error')} ">
	<label for="equipo">
		<g:message code="empresa.equipo.label" default="Equipo" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empresaInstance?.equipo?}" var="e">
    <li><g:link controller="equipo" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="equipo" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'equipo.label', default: 'Equipo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empresa.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${empresaInstance?.nombre}"/>

</div>

