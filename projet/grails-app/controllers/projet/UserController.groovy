package projet

import grails.plugin.springsecurity.SpringSecurityService
import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder

import static org.springframework.http.HttpStatus.*

class UserController {

    UserService userService
    IsoBootstrapService isoBootstrapService
    SpringSecurityService springSecurityService


    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    @Secured(["ROLE_ADMIN", 'ROLE_MOD'])
    def list(){

        [UserList:User.list(),UserRole:UserRole.list()]
    }
    @Secured(["ROLE_ADMIN", 'ROLE_MOD'])
    def listRole(){
        return  [roleLst:Role.list()]
    }

    @Secured(["ROLE_ADMIN", 'ROLE_MOD'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count()]
    }

    def show(Long id) {
        respond userService.get(id)
    }

    @Secured(["ROLE_ADMIN", 'ROLE_MOD'])
    def admin() {

    }

    @Secured(["ROLE_ADMIN", 'ROLE_MOD'])
    def create() {
        def message = ""
        if (params.username!=null && params.password!=null) {
            def created = isoBootstrapService.createUser(params.username, params.password, params.role)
            message = created ? "Le compte " + params.username + " a bien été créé.": "Le compte n'a pas été créé."
            //redirect(action: "show", id: springSecurityService.currentUser.id)
            println(params.id)
        }
        [message: message]


    }

    def save(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond userService.get(id)
    }

    /*def logout() {
        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()
        //redirect(action: "login")
    }*/

    def logoutHandlers
    def logout = {
        // Logout programmatically
        Authentication auth = SecurityContextHolder.context.authentication
        if (auth) {
            logoutHandlers.each  { handler->
                handler.logout(request,response,auth)
            }
        }
        redirect uri:params.redirect
    }

    def login() {
        redirect uri:params.redirect
        //redirect(controller:"SaleAd",action: "index")
    }

    def update(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        userService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
