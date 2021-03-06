package task3

class CustomerController {
    static scaffold = Customer
    def customerService
    //def index() {}

    def engin(){
        Customer customer = customerService.getFirstCustomer()
        render(template: "engin", model: [customer: customer])
    }

    def beyza(){
        render "Beyza 123"
    }
}
