import UIKit

//functions
print("---------")
print("FUNCTIONS")
print("---------\n")

print("Calling a Function:")
func student(name: String) -> String {
    return name
}
print(student(name: "Hari"))
print(student(name: "Charan"))

print("\n\nFUNCTION with PARAMETERS")
print("------------------------")
func mult(_ n1: Int, _ n2: Int) -> Int {
    return n1*n2
}
print("Multiplication = \(mult(10,20))")

print("\n\nFUNCTION without PARAMETERS")
print("---------------------------")
func fun() -> String {
    return "Ali"
}
print("Given String is - \(fun())")

print("\n\nFUNCTION with RETURN VALUES")
print("---------------------------")
func ls(array: [Int]) -> (large: Int, small: Int) {
    var lar = array[0]
    var sma = array[0]
    
    for i in array[1..<array.count] {
        if i < sma {
            sma = i
        }else if i > lar {
            lar = i
        }
    };return (lar,sma)
}
let num = ls(array: [40,24,10,12,97,28])
print("Largest number = \(num.large) \nSmallest number = \(num.small)")

print("\n\nFUNCTION without RETURN VALUES")
print("------------------------------")
func sum(_ a: Int, _ b: Int) {
    let a = a + b
    let b = a - b
    print(a,b)
}
sum(20,40)

print("\n\nFUNCTION without OPTIONAL RETURN TYPES")
print("--------------------------------------")
func minMax(array: [Int]) -> (Min: Int, Max: Int)? {
    if array.isEmpty {
        return nil
    }
    var Min = array[0]
    var Max = array[0]
    
    for i in array[1..<array.count] {
        if i < Min {
            Min = i
        } else if i > Max {
            Max = i
        }
    }
    return (Min, Max)
}

if let bounds = minMax(array: [40,24,10,12,97,28]) {
    print("Small -- \(bounds.Min) \nLarge -- \(bounds.Max)")
}

print("\n\nVARIADIC Parameters")
print("-------------------")
func vari<N>( _ members: N...) {
    for i in members {
        print(i)
    }
}
vari(5,2,3,4)
vari("iOS", "Xcode", "Swift", "SwiftUI")

// // // // // // // // // //
print("\n\n\n")
// Defining & Calling a function
func greet(_ person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet("Sridatta"))

// Combining the body of the message to a single line
func greetAgain(_ person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain("Annabelle"))

// Function without Parameters
func sayHello() -> String {
    return "Hello, World!"
}
print(sayHello())

// Function with multiple Parameters
func greet(_ person: String, _ alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person)
    } else {
        return greet(person)
    }
}
print(greet("Tim", true))

// Function without Return Values
func greetOne(_ person: String) {
    print("Hello, " + person + "!")
    print("\(person) is set as your profile by default.")
}
greetOne("HariCharan")

// Function with Multiple Return Values
func minMaxOne(array: [Int]) -> (min: Int, max: Int)? {
//    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMaxOne(array: [24,10,97,108,-1,44]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

// Functions with Implicit Return
func greeting(for person: String) -> String {
    "Hello, " + person  + "!"
}
print(greeting(for: "Dave"))

func greeting1(for person: String) -> String {
    return "hello, " + person
}
print(greeting1(for: "David"))

// Argument Labels
//func greets(person: String, from hometown: String) -> String {
//    return "Hello, \(person). Glad you came from \(hometown)."
//}
//print(greet("Darwin", "Cupertino"))

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

// Variadic Parameters
func aMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print("Mean is : \(aMean(1,2,4,8,5,6))")

// in-out functions
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let t = a
    a = b
    b = t
}
var num1 = 10
var num2 = 24
print("num1 is \(num1) & num2 is \(num2)")
swapTwoInts(&num1,&num2)
print("num1 is now \(num1) & num2 is now \(num2)")

// Function Types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
print("Sum is - \(addTwoInts(2, 3))")

var Add: (Int,Int) -> Int = addTwoInts
print("Result : \(Add(2, 3))")

