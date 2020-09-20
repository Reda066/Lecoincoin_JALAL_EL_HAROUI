package projet

import grails.gorm.transactions.Transactional

@Transactional
class IsoBootstrapService {

    def serviceMethod() {

    }

    def createUser (String username, String password,String role) {
        if (username != null && password != null && role != null) {
            def userRole = new Role(authority: role).save()
            def userAdminInstance = new User(username: username, password: password).save()
            UserRole.create(userAdminInstance, userRole, true)
            if(userAdminInstance) return true
            else return false
        }
        return false
    }
}
