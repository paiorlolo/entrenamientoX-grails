



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'altura', 'error')} required">
	<label for="altura">
		<g:message code="usuario.altura.label" default="Altura" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="altura" value="${fieldValue(bean: usuarioInstance, field: 'altura')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'desafioVigente', 'error')} ">
	<label for="desafioVigente">
		<g:message code="usuario.desafioVigente.label" default="Desafio Vigente" />
		
	</label>
	<g:select name="desafioVigente" from="${DesafioVigente.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.desafioVigente*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="usuario.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${usuarioInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'plan', 'error')} ">
	<label for="plan">
		<g:message code="usuario.plan.label" default="Plan" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioInstance?.plan?}" var="p">
    <li><g:link controller="plan" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plan" action="create" params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'plan.label', default: 'Plan')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'puntaje', 'error')} required">
	<label for="puntaje">
		<g:message code="usuario.puntaje.label" default="Puntaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="puntaje" type="number" value="${usuarioInstance.puntaje}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="usuario.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sexo" type="number" value="${usuarioInstance.sexo}" required=""/>

</div>

