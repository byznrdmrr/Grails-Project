package task3

import grails.gorm.transactions.Transactional

@Transactional
class CustomerService {

    def serviceMethod() {

    }

    Customer getFirstCustomer(){
        println "Beyza"
        List<Customer> customers = Customer.list()
        return customers?.getAt(0)
    }
}
