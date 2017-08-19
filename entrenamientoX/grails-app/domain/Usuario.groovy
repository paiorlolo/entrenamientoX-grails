

class Usuario {
	String nombre
	float altura
	Date fechaNacimiento
	char sexo
	int puntaje
	static hasMany = [desafioVigente: DesafioVigente, plan: Plan]
	
    static constraints = {
	}
}
