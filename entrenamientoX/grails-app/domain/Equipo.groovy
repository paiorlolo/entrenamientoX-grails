

class Equipo {
	static hasMany =[usuario: Usuario]
	String color
	static belongs=[empresa: Empresa]
	double puntaje
	String codigoRegistro
    static constraints = {
    }
}
