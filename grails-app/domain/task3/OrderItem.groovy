package task3

class OrderItem {

    Integer qty

    static belongsTo = [order:OnlineOrder, products:Product]

    static constraints = {
        qty()

    }
    @Override
    String toString() {
        return orderId  /*OrderItems OrderID ile gözüksün*/
    }
}
