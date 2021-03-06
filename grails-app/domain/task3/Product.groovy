package task3

class Product {
    String name
    String sku
    Float price

    static constraints = {
        sku()
        name()
        price()
    }
    @Override
    String toString() {
        return name
    }


}
