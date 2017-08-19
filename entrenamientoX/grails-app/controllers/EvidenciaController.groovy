

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EvidenciaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Evidencia.list(params), model:[evidenciaInstanceCount: Evidencia.count()]
    }

    def show(Evidencia evidenciaInstance) {
        respond evidenciaInstance
    }

    def create() {
        respond new Evidencia(params)
    }

    @Transactional
    def save(Evidencia evidenciaInstance) {
        if (evidenciaInstance == null) {
            notFound()
            return
        }

        if (evidenciaInstance.hasErrors()) {
            respond evidenciaInstance.errors, view:'create'
            return
        }

        evidenciaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'evidencia.label', default: 'Evidencia'), evidenciaInstance.id])
                redirect evidenciaInstance
            }
            '*' { respond evidenciaInstance, [status: CREATED] }
        }
    }

    def edit(Evidencia evidenciaInstance) {
        respond evidenciaInstance
    }

    @Transactional
    def update(Evidencia evidenciaInstance) {
        if (evidenciaInstance == null) {
            notFound()
            return
        }

        if (evidenciaInstance.hasErrors()) {
            respond evidenciaInstance.errors, view:'edit'
            return
        }

        evidenciaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Evidencia.label', default: 'Evidencia'), evidenciaInstance.id])
                redirect evidenciaInstance
            }
            '*'{ respond evidenciaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Evidencia evidenciaInstance) {

        if (evidenciaInstance == null) {
            notFound()
            return
        }

        evidenciaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Evidencia.label', default: 'Evidencia'), evidenciaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'evidencia.label', default: 'Evidencia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
