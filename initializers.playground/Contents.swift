import UIKit

class Person {
    var name = ""
    
    init() {
        name = "Tim"
    }
    
    init(_ name: String) {
        self.name = name
    }
}

class Employee: Person {
    var salary = 0
    var role = ""
    
    override init(_ name: String) {
        super.init(name)
        
        self.role = "Analyst"
    }
    
    func doWork() {
        print("Hi! My name is \(name) and i am \(role).")
        salary += 1
    }
}

let emp = Employee("Ruthur")
emp.role = "CEO"
emp.doWork()
print("\n")


let myPerson = Person("Cook")
print(myPerson.name)

let myEmployee = Employee("Tom")
print(myEmployee.name)
print(myEmployee.role)
print(myEmployee.salary)


//Initialization Parameters
print("\n")

struct Celsius {
    var temperatureInCelsius: Double
    
    // Initializing Parameters with Argument Labels and Parameter Names
    init(fromFahranheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    // Initializing Parameters without Argument Labels
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let boilingPointOfWater = Celsius(fromFahranheit: 212.0)
print("Boiling Point of Water in Celsius from Fahrenheit is \(boilingPointOfWater.temperatureInCelsius)")
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print("Freezing Point of Water in Celsius from Kelvin is \(freezingPointOfWater.temperatureInCelsius)")

// Making an Initializer Call without using Argument Label
let meltingPointOfIron = Celsius(560.12)
print("Melting Point of Iron in Celsius from Fahrenheit is \(meltingPointOfIron.temperatureInCelsius)")



// Optional Property Types
print("\n")

struct SurveyQuestion {
//    var ques: String  // can be declared var or let
    let ques: String
    var ans: String?
    
    init(_ ques: String) {
        self.ques = ques
    }
    
    func askQues() {
        print("Q: ",ques)
        print("A: ",ans!)
    }
    
//    init(_ Que: String) {
//        ques = Que
//    }
}
var survey = SurveyQuestion("What is the current Apple Stock rate?")
survey.ans = "I'm not sure about it!"
survey.askQues()


// Memberwise Initializers for Structures
print("\n")

struct Size {
    var width = 0.0, height = 0.0
}
let size = Size()
print(size.width,size.height)

let ZeroByTwo = Size(height: 2.0)
print(ZeroByTwo.width, ZeroByTwo.height)

let TwoByTwo = Size(width: 2.0, height: 2.0)
print(TwoByTwo.width, TwoByTwo.height)


//Initializer Delegation for Value Types
print("\n")

struct shapeSize {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = shapeSize()
    
    // method 1
    init() {}
    
    // method 2
    init(origin: Point, size: shapeSize) {
        self.origin = origin
        self.size = size
    }
    
    // method 3
    init(center: Point, size: shapeSize) {
        let originX = size.width/2
        let originY = size.height/2
        // referring to initializer in method 2 using self
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let basicRect = Rect()
print(basicRect.origin, basicRect.size)
print("Basic rect -- Origin: \(basicRect.origin.x),\(basicRect.origin.y) | Size: \(basicRect.size.width),\(basicRect.size.height) --")

let originRect = Rect(origin: Point(x: 4.0, y: 4.0), size: shapeSize(width: 6.0, height: 8.0))
print(originRect.origin, originRect.size)

let centerRect = Rect(origin: Point(x: 4.0, y: 4.0), size: shapeSize(width: 16.0, height: 20.0))
print(centerRect.origin, centerRect.size)


//Class Inheritance and Initialization
//Designated Initializer & Convinience Initializer
print("\n")

//Designated Initialzers
class mainClass {           // SuperClass / BaseClass
    var no1: Int
    init(no1: Int) {
        self.no1 = no1
    }
}

class sublClass: mainClass {    // SubClass
    var no2: Int
    init(no1: Int, no2: Int) {
        self.no2 = no2
        super.init(no1: no1) // calling a designated initializer from its immediate superclass
    }
}

let res = mainClass(no1: 10)
let res1 = sublClass(no1: 20, no2: 30)
print(res.no1)
print(res1.no1)
print(res1.no2)

// Convenience Initilaizers
print("\n")
class mainClass1 {
   var no1 : Int // local storage
   init(no1 : Int) {
      self.no1 = no1 // initialization
   }
}

class subClass1 : mainClass1 {
   var no2 : Int
   init(no1 : Int, no2 : Int) {
      self.no2 = no2
      super.init(no1:no1)
   }
   // Requires only one parameter for convenient method
   // ultimately calling a designated initilaizer
   override convenience init(no1: Int) {
      self.init(no1:no1, no2:0) // here no2 is assigned a value 0 which will be it's default value
   }
}

let result = mainClass1(no1: 20)
let print1 = subClass1(no1: 30)
let print2 = subClass1(no1: 20, no2: 40)

print("res is: \(result.no1)")
print("res is: \(print1.no1)")
print("res is: \(print1.no2)")
print("res is: \(print2.no1),\(print2.no2)")



//
print("\n")

class Vehicle {
    var noOfwheels = 0
    var description: String {
        return "\(noOfwheels) wheel(s)"
    }
}
let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    override init() {
        super.init()
        noOfwheels = 2
    }
}
let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")

class Hoverboard: Vehicle {
    var color: String
    
    init(color: String){
        self.color = color
    }
    
    override var description: String {
        return "\(super.description) in beautiful \(color)"
    }
}
let hover = Hoverboard(color: "Gold")
print("Hoverboard: ",hover.description)


//Designated and Convenience Initializers in Action
print("\n")

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}
let food1 = Food()
print("Name of the food is : \(food1.name)")

let food = Food(name: "Pasta")
print("Name of the food is : \(food.name)")

print("\n")
class recepieIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {     // designated initializer (initializes / populates all the properties of recepieIngredient subclass pf FoodClass)
        self.quantity = quantity
        super.init(name: name)      // delegates up to name initializer of Food class
    }
    override convenience init(name: String) {   // covenience initializer is defined to create an instance by name alone
        self.init(name: name, quantity: 1)
    }
}
let oneRecpIng0 = recepieIngredient()
print(oneRecpIng0.name)

let oneRecpIng1 = recepieIngredient(name: "Biryani")
print(oneRecpIng1.name)

let oneRecpIng2 = recepieIngredient(name: "Biryani", quantity: 10)
print(oneRecpIng2.name, oneRecpIng2.quantity)

print("\n")
class shoppingList: recepieIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}

let breakfastList = [
    shoppingList(),
    shoppingList(name: "Oatmeal"),
    shoppingList(name: "Omelette", quantity: 2)
]

breakfastList[0].name = "Bacon"
breakfastList[0].purchased = false
breakfastList[2].purchased = true

print(breakfastList[0].description)
print(breakfastList[2].description)
print("\n")
for item in breakfastList {
    print(item.description)
}


// Failable Initializers

// Conversion between numeric types using init(exactly:)
print("\n")

let wholeNumber: Double = 241097.0
//let wholeNumber: Double = 241097.344555 // not a whole number so doesnt return a Int value

if let valueStored = Int(exactly: wholeNumber) {
    //if the given number is a wholeNumber the convert to Int value
    print("\(wholeNumber) converted to Int has a value of \(valueStored)")
}else {
    // if the given numbet is not a wholeNumber then return no value
    print("\(wholeNumber) converted to Int doesnot have nay value.")
}

let pi: Double = 3.14159

if let piStoredValue = Int(exactly: pi) {
    print("\(pi) converted to Int has a value \(piStoredValue)")
}else {
    print("\(pi) converted to Int doesnot have nay value.")
}

print("\n")

struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
let someCreature = Animal(species: "Giraffe")
// someCreature is of type Animal?, not Animal

if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}
// Prints "An animal was initialized with a species of Giraffe"

let anonymousCreature = Animal(species: "")
// anonymousCreature is of type Animal?, not Animal

if anonymousCreature == nil {
    print("The anonymous creature could not be initialized")
}
// Prints "The anonymous creature could not be initialized"


//Failable Initializers for Enumerations
print("\n")

enum TemperatureUnit {
    case kelvin, celsius, fahrenheit
    init?(_ symbol: Character){
        switch symbol {
        case "K": self = .kelvin
        case "C": self = .celsius
        case "F": self = .fahrenheit
        default: return nil
        }
    }
}

let units = TemperatureUnit("F")
if units != nil {
    print("This is a defined temperature unit.")
}

let unit = TemperatureUnit("S")
if unit == nil {
    print("This is not a defined temperature unit.")
}


//Propagation of Initialization Failure
print("\n")

class Product {
    let name: String
    init?(name: String){
        if name.isEmpty { return nil }
        self.name = name
    }
}

class CartItem: Product {
    var quantity: Int
    init?(name: String, quantity: Int){
        if quantity < 1 { return nil }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let product1 = CartItem(name: "Wall Adapter", quantity: 0) {
    print("Item: \(product1.name), Quantity: \(product1.quantity)")
}else {
    print("CartItem value should be more than 1")
}


//Overriding a Failable Initializer
print("\n")

class Document {
    var name: String?
    var description: String {
        return "Document name is \(name!)"
    }
    // this initializer creates a document with a nil name value
//    init() {}
    // this initializer creates a document with a nonempty name value
    init?(name: String){
        if name.isEmpty { return nil }
        self.name = name
    }
}

class AutomaticallyNamedDocument: Document {
//    override init() {
//        super.init()
//        self.name = "[Untitled]"
//    }
//
    override init?(name: String) {
        super.init(name: name)
        if name.isEmpty {
            self.name = "[Untitled]"
        }else {
            self.name = name
        }
    }
}

class UntitledDocument: Document {
    override init(name: String) {
        super.init(name: "[Untitled]")!
    }
}

let doc = AutomaticallyNamedDocument(name: "")
print(doc?.description as Any)
