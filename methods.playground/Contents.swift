import UIKit

//Instance Methods (using Class)
class Count {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(by amount: Int){
        count += amount
    }
    func reset(){
        count = 0
    }
}

let counter = Count()

counter.increment()
print(counter.count)

counter.incrementBy(by: 11)
print(counter.count)

counter.reset()
print(counter.count)

print("\n")
//Modifying Value Types from within Instance Methods
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 2.0, y: 4.0)
print("Current Point = \(somePoint)")

somePoint.moveBy(x: 4.0, y: 6.0)
print("Moved Point = \(somePoint)")


print("\n")
//Mutating Methods for Enumerations
enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var ovenLight = TriStateSwitch.low
ovenLight.next()
print(ovenLight)
ovenLight.next()
print(ovenLight)

print("\n")
//Type Methods
class Math {
    class func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        }else {
            return number
        }
    }
}
var absno = Math.abs(number: -80)
print(absno)
var absno1 = Math.abs(number: 20)
print(absno1)

