

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EjercicioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ejercicio.list(params), model:[ejercicioInstanceCount: Ejercicio.count()]
    }

    def show(Ejercicio ejercicioInstance) {
        respond ejercicioInstance
    }

    def create() {
        respond new Ejercicio(params)
    }

    @Transactional
    def save(Ejercicio ejercicioInstance) {
        if (ejercicioInstance == null) {
            notFound()
            return
        }

        if (ejercicioInstance.hasErrors()) {
            respond ejercicioInstance.errors, view:'create'
            return
        }

        ejercicioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ejercicio.label', default: 'Ejercicio'), ejercicioInstance.id])
                redirect ejercicioInstance
            }
            '*' { respond ejercicioInstance, [status: CREATED] }
        }
    }

    def edit(Ejercicio ejercicioInstance) {
        respond ejercicioInstance
    }

    @Transactional
    def update(Ejercicio ejercicioInstance) {
        if (ejercicioInstance == null) {
            notFound()
            return
        }

        if (ejercicioInstance.hasErrors()) {
            respond ejercicioInstance.errors, view:'edit'
            return
        }

        ejercicioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ejercicio.label', default: 'Ejercicio'), ejercicioInstance.id])
                redirect ejercicioInstance
            }
            '*'{ respond ejercicioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ejercicio ejercicioInstance) {

        if (ejercicioInstance == null) {
            notFound()
            return
        }

        ejercicioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ejercicio.label', default: 'Ejercicio'), ejercicioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ejercicio.label', default: 'Ejercicio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
