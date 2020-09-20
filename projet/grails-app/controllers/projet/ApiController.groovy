package projet

import grails.converters.JSON
import grails.converters.XML

import java.text.SimpleDateFormat

class ApiController {
    SaleAdService saleAdService
    UserService userService

    def index() {
        render "OK"
    }

    def users() {
        switch (request.getMethod()) {
            case "GET":
                withFormat {
                    json { render User.list() as JSON }
                    xml { render User.list() as XML }
                }
                break
            case "POST":
                if (!request.JSON.username || !request.JSON.password)
                    return response.status = 401
                def newUser = new User(username: request.JSON.username, password: request.JSON.password)
                newUser.save(flush:true)
                return response.status = 201
                break
        }
    }

    def user() {
        switch (request.getMethod()) {
            case "GET":
                if (!params.id)
                    return response.status = 400
                def user = User.get(params.id)
                if (!user)
                    return response.status = 404
                response.withFormat {
                    json { render user as JSON }
                    xml { render user as XML }

                }
                break

            case "PUT":
                if (!params.id)
                    return response.status = 400
                def user = User.get(params.id)
                if (request.JSON.username && request.JSON.password && user)
                    user.username = request.JSON.username
                user.password = request.JSON.password
                user.save(flush: true)
                return response.status = 201

                break

            case "PATCH":
                if (!params.id)
                    return response.status = 400
                def user = User.get(params.id)
                if (user)

                    user.properties = request.JSON
                user.save(flush: true)
                return response.status = 201

                break

            case "DELETE":
                if (!params.id)
                    return response.status = 400
                def user = User.get(params.id)
                if (!user)
                    return response.status = 404
                def listRole = UserRole.findAllByUser(user)
                UserRole.deleteAll(listRole)
                user.delete(flush: true)
                return response.status = 201
                break
            default:
                return response.status = 405
                break
        }
    }

    def saleAd() {
        switch (request.getMethod()) {
            case "GET":
                if (!params.id)
                    return response.status = 400
                def saleAd = SaleAd.get(params.id)
                if (!saleAd)
                    return response.status = 404
                response.withFormat {
                    json { render saleAd as JSON }
                    xml { render saleAd as XML }

                }
                break

            case "PUT":
                if (!params.id)
                    return response.status = 400
                def saleAd = SaleAd.get(params.id)
                println saleAd
                if (!saleAd)
                    return response.status = 404
                println request.JSON
                saleAd.descShort = request.JSON.descShort
                saleAd.descLong = request.JSON.descLong
                saleAd.title = request.JSON.title
                saleAd.price = request.JSON.price
                saleAd.save(flush: true)
                return response.status = 200
                break

            case "PATCH":
                if (!params.id)
                    return response.status = 400
                def saleAd = SaleAd.get(params.id)
                println saleAd
                if (!saleAd)
                    return response.status = 404
                if (saleAd)
                    saleAd.properties = request.JSON
                saleAd.save(flush: true)
                return response.status = 200

                break


            case "DELETE":
                def saleAdInstance = SaleAd.get(params.id)
                if (!params.id) {
                    return response.status = 400
                }
                if (!saleAdInstance) {
                    return response.status = 404
                }
                saleAdService.delete(saleAdInstance.id)
                if (!saleAdInstance) {
                    return response.status = 202
                }
                break
            default:
                return response.status = 405
                break

        }
        return response.status = 200
    }

    def saleAds() {

        switch (request.getMethod()) {

            case 'POST':
                if( !request.JSON.title || !request.JSON.descShort || !request.JSON.descLong || !request.JSON.price)
                {
                    println(request.JSON.descShort)
                    println(request.JSON.descLong)
                    return response.status = 401
                }



                def newSaleAd = new SaleAd(descShort: request.JSON.descShort, descLong: request.JSON.descLong, title: request.JSON.title,price: request.JSON.price)
                newSaleAd.save(flush: true)
                return response.status = 201
                break

            case "GET":
                withFormat {
                    json { render SaleAd.list() as JSON }
                    xml { render SaleAd.list() as XML }
                }

        }
    }

}
