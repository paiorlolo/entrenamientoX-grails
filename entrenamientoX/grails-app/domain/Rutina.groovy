

class Rutina {
	String nombre
	static belongs=[ejercicio:Ejercicio]
	static hasMany = Plan
    static constraints = {
    }
}
