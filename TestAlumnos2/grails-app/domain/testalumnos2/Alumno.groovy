package testalumnos2

class Alumno {
	static scaffold = true;
	
	Integer edad;
	String nombre;
	String dni;
	
    static constraints = {
		nombre(nullable:true)
		edad(nullable:true)
		dni(display:false, nullable:true)
    }
}
