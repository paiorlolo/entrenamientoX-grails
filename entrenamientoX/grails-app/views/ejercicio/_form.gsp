



<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'descanso', 'error')} required">
	<label for="descanso">
		<g:message code="ejercicio.descanso.label" default="Descanso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descanso" required="" value="${ejercicioInstance?.descanso}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'repeticiones', 'error')} required">
	<label for="repeticiones">
		<g:message code="ejercicio.repeticiones.label" default="Repeticiones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="repeticiones" required="" value="${ejercicioInstance?.repeticiones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'rutina', 'error')} ">
	<label for="rutina">
		<g:message code="ejercicio.rutina.label" default="Rutina" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ejercicioInstance?.rutina?}" var="r">
    <li><g:link controller="rutina" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rutina" action="create" params="['ejercicio.id': ejercicioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rutina.label', default: 'Rutina')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'series', 'error')} required">
	<label for="series">
		<g:message code="ejercicio.series.label" default="Series" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="series" type="number" value="${ejercicioInstance.series}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'tiempo', 'error')} required">
	<label for="tiempo">
		<g:message code="ejercicio.tiempo.label" default="Tiempo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tiempo" type="number" value="${ejercicioInstance.tiempo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'video', 'error')} required">
	<label for="video">
		<g:message code="ejercicio.video.label" default="Video" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="video" name="video.id" from="${Video.list()}" optionKey="id" required="" value="${ejercicioInstance?.video?.id}" class="many-to-one"/>

</div>

