



<div class="fieldcontain ${hasErrors(bean: evidenciaInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="evidencia.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${evidenciaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evidenciaInstance, field: 'estaAprobado', 'error')} ">
	<label for="estaAprobado">
		<g:message code="evidencia.estaAprobado.label" default="Esta Aprobado" />
		
	</label>
	<g:checkBox name="estaAprobado" value="${evidenciaInstance?.estaAprobado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: evidenciaInstance, field: 'foto', 'error')} required">
	<label for="foto">
		<g:message code="evidencia.foto.label" default="Foto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="foto" required="" value="${evidenciaInstance?.foto}"/>

</div>

