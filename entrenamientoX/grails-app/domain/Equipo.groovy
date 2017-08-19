

class Equipo {
	static hasMany =[usuario: Usuario]
	String color
	static belongsTo=[empresa: Empresa]
	double puntaje
	String codigoRegistro
    static constraints = {
    }
}
