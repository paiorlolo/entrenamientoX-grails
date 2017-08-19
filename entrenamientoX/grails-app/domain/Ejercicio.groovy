

class Ejercicio {
	Video video
	String repeticiones
	String descanso
	int series
	static hasMany= [rutina: Rutina]
	int tiempo
	static belongsTo= [video: Video]
    static constraints = {
		
    }
}
