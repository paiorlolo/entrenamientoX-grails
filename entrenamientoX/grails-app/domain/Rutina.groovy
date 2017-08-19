

class Rutina {
	String nombre
	static belongsTo=[ejercicio:Ejercicio]
	static hasMany = Plan
    static constraints = {
    }
}
