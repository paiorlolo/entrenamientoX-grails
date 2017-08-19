

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MedicionPesoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MedicionPeso.list(params), model:[medicionPesoInstanceCount: MedicionPeso.count()]
    }

    def show(MedicionPeso medicionPesoInstance) {
        respond medicionPesoInstance
    }

    def create() {
        respond new MedicionPeso(params)
    }

    @Transactional
    def save(MedicionPeso medicionPesoInstance) {
        if (medicionPesoInstance == null) {
            notFound()
            return
        }

        if (medicionPesoInstance.hasErrors()) {
            respond medicionPesoInstance.errors, view:'create'
            return
        }

        medicionPesoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'medicionPeso.label', default: 'MedicionPeso'), medicionPesoInstance.id])
                redirect medicionPesoInstance
            }
            '*' { respond medicionPesoInstance, [status: CREATED] }
        }
    }

    def edit(MedicionPeso medicionPesoInstance) {
        respond medicionPesoInstance
    }

    @Transactional
    def update(MedicionPeso medicionPesoInstance) {
        if (medicionPesoInstance == null) {
            notFound()
            return
        }

        if (medicionPesoInstance.hasErrors()) {
            respond medicionPesoInstance.errors, view:'edit'
            return
        }

        medicionPesoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MedicionPeso.label', default: 'MedicionPeso'), medicionPesoInstance.id])
                redirect medicionPesoInstance
            }
            '*'{ respond medicionPesoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MedicionPeso medicionPesoInstance) {

        if (medicionPesoInstance == null) {
            notFound()
            return
        }

        medicionPesoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MedicionPeso.label', default: 'MedicionPeso'), medicionPesoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicionPeso.label', default: 'MedicionPeso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
