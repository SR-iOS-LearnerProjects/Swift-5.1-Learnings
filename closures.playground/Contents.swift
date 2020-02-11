import UIKit

let names = ["Chris", "Andrew", "Harry", "Havelock", "Ted"]
print("\nGiven array : \(names)")

print("\n-- Reverse Function Invoked --")
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)
print("Reversed array : \(reversedNames)")

// INLINE CLOSURE
print("\n\n\nPrinting reversedName array using INLINE CLOSURE:")

print("\n-- Inline Closure Invoked --")
reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})
print(reversedNames)

// INFERRING TYPE FROM CONTEXT
print("\n\n\nPrinting reversedName array using TYPE INFERRING FROM CONTEXT:")

print("\n-- Inferring Type from Context Invoked --")
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2})
print(reversedNames)

// IMPLICIT RETURNS FROM SINGLE EXPRESSION CLOSURE
print("\n\n\nPrinting reversedName array using IMPLICIT RETURNS FROM SINGLE EXPRESSION CLOSURE")

print("\n-- Implicit Returns Invoked --")
reversedNames = names.sorted(by: { s1, s2 in s1 > s2})
print(reversedNames)

// SHORTHAND ARGUMENT NAMES
print("\n\n\nPrinting reversedNames array using SHORTHAND ARGUMENT NAMES")

print("\n-- Shorthand Arguments Names Applied --")
reversedNames = names.sorted(by: { $0 > $1 })
print(reversedNames)

// OPERATOR METHODS
print("\n\n\nPrinting reversedNames array using OPERATOR METHODS")

print("\n-- Operator Methods Applied --")
reversedNames = names.sorted(by: >)
print(reversedNames)

// TRAILING CLOSURES
//print("\n\n\nTRAILING CLOSURES")
//
//let digitNames = [
//    0:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five",
//    6:"Six", 7:"Seven", 8:"Eight", 9:"Nine", 10:"Ten"
//]
//
//let numbers = [24, 10, 1997]
//
//let strings = numbers.map { (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = digitNames[ number % 10 ]! + output
//        number /= 10
//    }while number > 0
//    return output
//}







