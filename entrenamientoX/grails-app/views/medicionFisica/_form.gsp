



<div class="fieldcontain ${hasErrors(bean: medicionFisicaInstance, field: 'cadera', 'error')} required">
	<label for="cadera">
		<g:message code="medicionFisica.cadera.label" default="Cadera" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cadera" value="${fieldValue(bean: medicionFisicaInstance, field: 'cadera')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicionFisicaInstance, field: 'cintura', 'error')} required">
	<label for="cintura">
		<g:message code="medicionFisica.cintura.label" default="Cintura" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cintura" value="${fieldValue(bean: medicionFisicaInstance, field: 'cintura')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicionFisicaInstance, field: 'cuello', 'error')} required">
	<label for="cuello">
		<g:message code="medicionFisica.cuello.label" default="Cuello" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cuello" value="${fieldValue(bean: medicionFisicaInstance, field: 'cuello')}" required=""/>

</div>

