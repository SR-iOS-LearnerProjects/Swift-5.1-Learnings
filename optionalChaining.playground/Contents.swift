import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var numOfRooms = 1
}

let john = Person()

let roomCount = john.residence?.numOfRooms
print(roomCount)

