<%@ page import="testalumnos2.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${alumnoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'edad', 'error')} ">
	<label for="edad">
		<g:message code="alumno.edad.label" default="Edad" />
		
	</label>
	<g:field name="edad" type="number" value="${alumnoInstance.edad}"/>

</div>

