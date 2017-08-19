



<div class="fieldcontain ${hasErrors(bean: medicionPruebaInstance, field: 'estocadas', 'error')} required">
	<label for="estocadas">
		<g:message code="medicionPrueba.estocadas.label" default="Estocadas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estocadas" type="number" value="${medicionPruebaInstance.estocadas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicionPruebaInstance, field: 'flexiones', 'error')} required">
	<label for="flexiones">
		<g:message code="medicionPrueba.flexiones.label" default="Flexiones" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flexiones" type="number" value="${medicionPruebaInstance.flexiones}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicionPruebaInstance, field: 'fondos', 'error')} required">
	<label for="fondos">
		<g:message code="medicionPrueba.fondos.label" default="Fondos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fondos" type="number" value="${medicionPruebaInstance.fondos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicionPruebaInstance, field: 'plancha', 'error')} required">
	<label for="plancha">
		<g:message code="medicionPrueba.plancha.label" default="Plancha" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plancha" value="${fieldValue(bean: medicionPruebaInstance, field: 'plancha')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicionPruebaInstance, field: 'sentadillas', 'error')} required">
	<label for="sentadillas">
		<g:message code="medicionPrueba.sentadillas.label" default="Sentadillas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sentadillas" type="number" value="${medicionPruebaInstance.sentadillas}" required=""/>

</div>

