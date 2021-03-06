package task3

class Customer {
    String firstName
    String lastName
    Long phone
    String email
    Integer totalPoints
    static hasMany = [awards:Award,orderID:OnlineOrder]

    static constraints = {
        phone()
        firstName()
        lastName()
        email(nullable:true, maxSize: 255,email: true)
        totalPoints(max:10)

    }
    @Override
    String toString() {
        return id+"-"+firstName+lastName
    }
}
