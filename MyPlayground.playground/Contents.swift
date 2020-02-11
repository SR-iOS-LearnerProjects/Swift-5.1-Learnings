import UIKit

var myString = "Hello, Sridatta"
print(myString)
print()

//
print("Pritn() with default properties:")
print("Value One")

// an empty print() can be used as a linebreak.
print()

// implementing a print() with Items, Separator and Terminator
print("Print() with Items, Separator & Terminator:")
print("|Value One","Value Two",separator: "|", terminator: "|")

// assigning a value to a user-defined variable and printing
var distance: Int = 24
print(distance)
print()

// typealias
print("TYPEALIAS:")
typealias meters = Int
var length: meters = 1024
print(length)
print()

//type annotation
print("TYPE ANNOTATION:")
var var1:Double=3.214
print(var1)

//printing variable
print()
print("Printing Variables:")
var _value = 241097
print("Value = \(_value)")
print()

//Optionals
print("OPTIONALS")
print("---------")
var myString1 : String? = nil
if myString1 != nil {
    print(myString1)
}else {
    print("myString1 has nil value")
}

//Optionals with Forced Unwrapping
print()
print("Optionals with Forced Unwrapping:")
var myString2 : String?

myString2 = "Hello, World!"

if myString2 != nil {
    print("Output:1")
    print(myString2)
}else {
    print("myString2 has nil value")
}

var myStr : String?

myStr = "Hello, World!"

if myStr != nil {
    print("Output:2")
    print(myStr!)
}else {
    print("myString3 has nil value")
}

//Automatic Unwrapping
print()
print("Optionals with Automatic Unwrapping:")
var myStr11:String!
myStr11 = "Hello"
if myStr11 != nil {
    print(myStr11)
}else {
    print("myStr11 has a nil value")
}

//Optional Binding
print()
print("Optional Binding:")

var myStr22 : String?

myStr22 = "Hi, Sridatta"

if let tempStr = myStr22 {
    print("Your string is - \(tempStr)")
}else {
    print("Your string has no value")
}

//Tuples
print()
print("TUPLES")
print("------")
print("Accessing Tuples using index numbers:")
var err402 = (402,"Page Not Found")
print("The Error Code is - \(err402.0)")
print("The Error Description is - \(err402.1)")
print()
print("Accessing Tuples using user defined variable names:")
var err401 = (errC:401, errD:"Unauthorized")
print("The Error Code is - \(err401.errC)")
print("The Error Description is - \(err401.errD)")
print()
print("The Error Code is : \(err401.errC) -> \(err401.errD)")

//Constants
print()
print("CONSTANTS")
print("---------")
print("Defining and printing a constant:")
let PI = 3.14
print("PI = \(PI)")
print("Defining and printing a constant using Type Annotation:")
let _G : Float = 9.8
print("G = \(_G)")

//Literals
print()
print("LITERALS")
print("--------")
print("Integer Literals:")
let decimalInt = 17
var binaryInt = 0b10001
let octalInt = 0o21
let hexadecimalInt = 0x11
print("Value of Decimal Integer     : \(decimalInt)")
print("Value of Binary Integer      : \(binaryInt)")
print("value of Octal Integer       : \(octalInt)")
print("Value of Hexadecimal Integer : \(hexadecimalInt)")
print()
print("Floating-Point Literals:")
var decimalDouble = 12.1815
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xc.3p0
print("Value of Decimal Float-Point Integer     : \(decimalDouble)")
print("Value of Binary Float-Point Integer      : \(exponentDouble)")
print("Value of Hexadecimal Float-Point Integer : \(hexadecimalDouble)")
print()
print("String Literals:")
let str = "Hello, \'XCode\'\n\tYou are running on version \"11.2.1\"\nGood to see you."
print(str)

print()
print("STRINGS")
print("-------")
//String Comparision
print("String Comparision:")
var c1 = "Hello"
var c2 = "Hello World"
print("String 1 -- \(c1)")
print("String 2 -- \(c2)")
if c1 == c2 {
    print("Strings are equal")
}else {
    print("Strings are not equal")
}

////String Iterating
//print()
//print("String Iterating:")
//for chars in "This String"{
//    print(chars, terminator: " ")
//}

print()
print("STRING FUNCTIONS")
print("----------------")
var strint = "24"
//print(strint.toInt)

print("Reverse of String:")
let str111 = "Hello, world!"
let reversed = String(str111.reversed())
print(reversed)

//Array
print()
print("ARRAYS")
print("------")
print("Initializing & Accessing Arrays:")
var arr1 = [Int](repeating: 10, count: 3)
var sarr1 = arr1[0]
print(sarr1)
print(arr1[1])
print(arr1[2])

print()
print("Modifying Array Elements:")
var arr = [Int]()
arr.append(10)
arr.append(20)
arr += [40]
print("Original Array:")
var somearr = arr[0]
print(somearr)
print(arr[1])
print(arr[2])
arr[2] = 50
print("Modified Array:")
//var somearr = arr[0]
print(somearr)
print(arr[1])
print(arr[2])

//Adding two arrays
print()
print("Adding Two Arrays:")
var a1 = [Int](repeating: 2, count: 2)
print()
print("Elements of array : a1")
for item in a1 {
    print(item)
}
var a2 = [Int](repeating: 3, count: 3)
print()
print("Elements of array : a2")
for item in a2 {
    print(item)
}
var a3 = a1 + a2
print()
print("Elements of array : a3 (a1 + a2)")
for item in a3{
    print(item)
}
print()
print("Total Element count of Arrays:")
print("Total elements in a1 -- \(a1.count)")
print("Total elements in a2 -- \(a2.count)")
print("Total elements in a3 -- \(a3.count)")
print()
print("Checking whether Array is Empty:")
print("Array a1.isEmpty = \(a1.isEmpty)")
print("Array a2.isEmpty = \(a2.isEmpty)")
print("Array a3.isEmpty = \(a3.isEmpty)")
















