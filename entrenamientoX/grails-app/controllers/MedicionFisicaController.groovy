

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MedicionFisicaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MedicionFisica.list(params), model:[medicionFisicaInstanceCount: MedicionFisica.count()]
    }

    def show(MedicionFisica medicionFisicaInstance) {
        respond medicionFisicaInstance
    }

    def create() {
        respond new MedicionFisica(params)
    }

    @Transactional
    def save(MedicionFisica medicionFisicaInstance) {
        if (medicionFisicaInstance == null) {
            notFound()
            return
        }

        if (medicionFisicaInstance.hasErrors()) {
            respond medicionFisicaInstance.errors, view:'create'
            return
        }

        medicionFisicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'medicionFisica.label', default: 'MedicionFisica'), medicionFisicaInstance.id])
                redirect medicionFisicaInstance
            }
            '*' { respond medicionFisicaInstance, [status: CREATED] }
        }
    }

    def edit(MedicionFisica medicionFisicaInstance) {
        respond medicionFisicaInstance
    }

    @Transactional
    def update(MedicionFisica medicionFisicaInstance) {
        if (medicionFisicaInstance == null) {
            notFound()
            return
        }

        if (medicionFisicaInstance.hasErrors()) {
            respond medicionFisicaInstance.errors, view:'edit'
            return
        }

        medicionFisicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MedicionFisica.label', default: 'MedicionFisica'), medicionFisicaInstance.id])
                redirect medicionFisicaInstance
            }
            '*'{ respond medicionFisicaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MedicionFisica medicionFisicaInstance) {

        if (medicionFisicaInstance == null) {
            notFound()
            return
        }

        medicionFisicaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MedicionFisica.label', default: 'MedicionFisica'), medicionFisicaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicionFisica.label', default: 'MedicionFisica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
