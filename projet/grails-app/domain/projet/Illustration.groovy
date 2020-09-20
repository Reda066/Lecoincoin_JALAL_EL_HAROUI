package projet

class Illustration {

    String filename

    static belongsTo = SaleAd

    static constraints = {
        filename nullable: true, blank: false
    }
}
