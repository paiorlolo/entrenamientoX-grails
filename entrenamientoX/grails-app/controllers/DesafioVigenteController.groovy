

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DesafioVigenteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DesafioVigente.list(params), model:[desafioVigenteInstanceCount: DesafioVigente.count()]
    }

    def show(DesafioVigente desafioVigenteInstance) {
        respond desafioVigenteInstance
    }

    def create() {
        respond new DesafioVigente(params)
    }

    @Transactional
    def save(DesafioVigente desafioVigenteInstance) {
        if (desafioVigenteInstance == null) {
            notFound()
            return
        }

        if (desafioVigenteInstance.hasErrors()) {
            respond desafioVigenteInstance.errors, view:'create'
            return
        }

        desafioVigenteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'desafioVigente.label', default: 'DesafioVigente'), desafioVigenteInstance.id])
                redirect desafioVigenteInstance
            }
            '*' { respond desafioVigenteInstance, [status: CREATED] }
        }
    }

    def edit(DesafioVigente desafioVigenteInstance) {
        respond desafioVigenteInstance
    }

    @Transactional
    def update(DesafioVigente desafioVigenteInstance) {
        if (desafioVigenteInstance == null) {
            notFound()
            return
        }

        if (desafioVigenteInstance.hasErrors()) {
            respond desafioVigenteInstance.errors, view:'edit'
            return
        }

        desafioVigenteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DesafioVigente.label', default: 'DesafioVigente'), desafioVigenteInstance.id])
                redirect desafioVigenteInstance
            }
            '*'{ respond desafioVigenteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DesafioVigente desafioVigenteInstance) {

        if (desafioVigenteInstance == null) {
            notFound()
            return
        }

        desafioVigenteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DesafioVigente.label', default: 'DesafioVigente'), desafioVigenteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'desafioVigente.label', default: 'DesafioVigente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
