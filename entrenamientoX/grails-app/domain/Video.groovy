

class Video {
	String link
	String tag
	String descripcion
	static hasMany= [ejercicio:Ejercicio]
    static constraints = {
		//link unique: true 
	
    }
}
