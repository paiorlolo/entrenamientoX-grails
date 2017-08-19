

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MedicionPruebaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MedicionPrueba.list(params), model:[medicionPruebaInstanceCount: MedicionPrueba.count()]
    }

    def show(MedicionPrueba medicionPruebaInstance) {
        respond medicionPruebaInstance
    }

    def create() {
        respond new MedicionPrueba(params)
    }

    @Transactional
    def save(MedicionPrueba medicionPruebaInstance) {
        if (medicionPruebaInstance == null) {
            notFound()
            return
        }

        if (medicionPruebaInstance.hasErrors()) {
            respond medicionPruebaInstance.errors, view:'create'
            return
        }

        medicionPruebaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'medicionPrueba.label', default: 'MedicionPrueba'), medicionPruebaInstance.id])
                redirect medicionPruebaInstance
            }
            '*' { respond medicionPruebaInstance, [status: CREATED] }
        }
    }

    def edit(MedicionPrueba medicionPruebaInstance) {
        respond medicionPruebaInstance
    }

    @Transactional
    def update(MedicionPrueba medicionPruebaInstance) {
        if (medicionPruebaInstance == null) {
            notFound()
            return
        }

        if (medicionPruebaInstance.hasErrors()) {
            respond medicionPruebaInstance.errors, view:'edit'
            return
        }

        medicionPruebaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MedicionPrueba.label', default: 'MedicionPrueba'), medicionPruebaInstance.id])
                redirect medicionPruebaInstance
            }
            '*'{ respond medicionPruebaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MedicionPrueba medicionPruebaInstance) {

        if (medicionPruebaInstance == null) {
            notFound()
            return
        }

        medicionPruebaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MedicionPrueba.label', default: 'MedicionPrueba'), medicionPruebaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicionPrueba.label', default: 'MedicionPrueba'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
