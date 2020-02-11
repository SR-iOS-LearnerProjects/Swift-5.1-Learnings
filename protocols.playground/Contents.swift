import UIKit

protocol classa {
   var marks: Int { get set }
   var result: Bool { get }
   
   func attendance() -> String
   func markssecured() -> String
}

protocol classb: classa {
   var present: Bool { get set }
   var subject: String { get set }
   var stname: String { get set }
}

class classc: classb {
   var marks = 96
   let result = true
   var present = false
   var subject = "Swift 4 Protocols"
   var stname = "Protocols"

   func attendance() -> String {
      return "The \(stname) has secured 99% attendance"
   }
   func markssecured() -> String {
      return "\(stname) has scored \(marks)"
   }
}

let studdet = classc()
studdet.stname = "Swift 4"
studdet.marks = 98
studdet.markssecured()

print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)

print("\n")
//protocols

protocol FullyNamed {
    var fullName: String { get }
}
struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "Tim Cook")
print(john.fullName + "\n")

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil){
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
var ncc101 = Starship(name: "Vikranth", prefix: "INS")
print(ncc101.fullName)


print("\n")

protocol RandomNumberGenerator {
    func random() -> Double
}
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")

//Mutating Method Requirements
print("\n")

protocol Togglable {
    mutating func toggle()
}
enum SwitchOnOff: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .off
        case .on:
            self = .on
        }
    }
}
var lightSwitch = SwitchOnOff.on
lightSwitch.toggle()
print("Light switch is \(lightSwitch).")


//Initializer Requirements
//Class implementations of protocol initializer requirements
print("\n")

protocol protocolOne {
    init(no1: Int)
}
class mainClass {
    var no1: Int
    init(no1: Int){
        self.no1 = no1
    }
}
class subClass: mainClass, protocolOne {
    var no2: Int
    init(no1: Int, no2: Int){
        self.no2 = no2
        super.init(no1: no1)
    }
    required override convenience init(no1: Int) {
        self.init(no1: no1, no2: 0)
    }
}
let res = mainClass(no1: 24)
let result = subClass(no1: 10, no2: 1997)

print("res is \(res.no1)")
print("res is \(result.no1)")
print("res is \(result.no2)")


//Protocol Types
print("\n")

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator){
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...5 {
    print("Random dice roll value is \(dice.roll())")
}
