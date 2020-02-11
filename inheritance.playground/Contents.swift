import UIKit

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "travelling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        //code
    }
}
let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 12.0
print("Bicycle: \(bicycle.description)")

class Tandem: Bicycle {
    var noOfPassengers = 0
}
let tandem = Tandem()
tandem.noOfPassengers = 2
tandem.currentSpeed = 24.0
print("Tandem: \(tandem.description)")

//Overriding Methods
class Train: Vehicle {
    override func makeNoise() {
        print("Siren")
    }
}
let train = Train()
print("Train:")
train.makeNoise()

//Overriding Properties
print("\n")

class Circle {
    var radius = 12.5
    var area: String {
        return "\(radius)"
    }
}

class Ellipse: Circle {
    var print = 7
    override var area: String {
        return super.area + " is now overridden to \(print)"
    }
}

let ellipse = Ellipse()
ellipse.radius = 25.0
ellipse.print = 3
print("Radius \(ellipse.area)")

print()
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 24.0
car.gear = 3
print("Car: \(car.description)")

//Overriding Property Observers
print()

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
let autoCar = AutomaticCar()
autoCar.currentSpeed = 45
print("Automatic Car: \(autoCar.description)")

