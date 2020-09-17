package projet

class BootStrap {

    def init = { servletContext ->
        ["ROLE_ADMIN","ROLE_MOD","ROLE_USER"]
        def adminRole = new Role(authority: "ROLE_ADMIN").save()
        def userAdminInstance = new User(username: "admin", password: "admin").save()
        UserRole.create(userAdminInstance, adminRole, true)

        def modRole = new Role(authority: "ROLE_MOD").save()
        def userModInstance = new User(username: "modo", password: "modo").save()
        UserRole.create(userModInstance, modRole, true)

        def userRole = new Role(authority: "ROLE_USER").save()
        def userInstance = new User(username: "user", password: "user").save()
        UserRole.create(userInstance, userRole, true)

        (1..20).each {
            new SaleAd(title: "title"+it, descShort: "Description courte",
            descLong: "Description longue", price: it).addToIllustration(new Illustration(filename: "filename.png")).save()
        }

    }

    def createUser(){

        if (params.username != null && params.password != null && params.role != null) {

        }

        def userRole = new Role(authority: params.role).save()
        def userAdminInstance = new User(username: params.username, password: params.password).save()
        UserRole.create(userAdminInstance, userRole, true)

    }

}
