package task3

class Award {
    Date awardDate
    String type
    Integer points
    static belongsTo = [customer:Customer]

    static constraints = {
        awardDate()
        type(inList: ["Purchase","Rewards"])
        points()
    }
    @Override
    String toString() {
        return type
    }
}
