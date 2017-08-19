

class Desafio {
	String tag
	double puntaje
	String descripcion
	static belongsTo = [usuario: Usuario]
    static constraints = {
    }
}
