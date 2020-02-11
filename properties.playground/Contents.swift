import UIKit

//Stored Property
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var someRange = FixedLengthRange(firstValue: 4, length: 4)

print("Stored values with a fixed range:")
print("FirstValue = ", someRange.firstValue)
print("Length = ", someRange.length)

//someRange.firstValue = 6
//someRange.length = 4
//
//print("FirstValue = ", someRange.firstValue)
//print("Length = ", someRange.length)

print()
//Lazy Stored Properties
class Sample {
    lazy var num = Number()
}

class Number {
    var name = "Swift 5.1"
}
var SampleOne = Sample()

print(SampleOne.num.name)

print()
//Computed Properties
class sample {
    var no1 = 0.0
    var no2 = 0.0
    
    var length = 400.0
    var width = 300.0
    
    var middle: (Double, Double) {
        get {
            return (length/2, width/2)
        }
        
        set(axis){
            no1 = axis.0 - (length/2)
            no2 = axis.1 - (width/2)
        }
    }
}

var result = sample()
print(result.middle)

result.middle = (0.0, 10.0)
print(result.no1)
print(result.no2)

print()
print()
//Computed Properties example with Structures
struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var height = 0.0
    var width = 0.0
}

struct Polygon {
    var origin = Point()
    var size = Size()
    
    var center: Point {
        get {
            let centerX = size.height/2
            let centerY = size.width/2
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.height/2)
            origin.y = newCenter.y - (size.width/2)
        }
    }
}

var square = Polygon(origin: Point(x: 0.0, y: 0.0), size: Size(height: 10.0, width: 10.0))

let initialSquareCenter = square.center

print("Initial Square Origin is at : ",square.origin)
print("Initial Square Center is at : ",initialSquareCenter)

square.center = Point(x: 15.0, y: 15.0)
print()
print("New Square Origin is at : ",square.origin)

//Property Observers
// willSet & didSet
print()
print()

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set total steps to \(newTotalSteps).")
        }
        
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps.")
            }
        }
    }
}

let steps = StepCounter()
steps.totalSteps = 240
steps.totalSteps = 360
steps.totalSteps = 480
steps.totalSteps = 540

print()
print()
class StepCounter1 {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set total steps to \(newTotalSteps).")
        }
        
        didSet(stepsAdded) {
            if totalSteps > stepsAdded {
                print("Added \(totalSteps - stepsAdded) steps.")
            }
        }
    }
}

let steps1 = StepCounter()
steps1.totalSteps = 440
steps1.totalSteps = 660
steps1.totalSteps = 880


//Property Wrapper
print()
print()

@propertyWrapper
struct TwelveOrLess {
    var number = 0
    var wrappedValue: Int {
        get {
            return number
        }
        set {
            number = min(newValue, 12)
        }
    }
}

struct Rectangle {
//    @TwelveOrLess var height: Int
//    @TwelveOrLess var width: Int
//            OR
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()
    
    var height: Int {
        get { return _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }
    var width: Int {
        get { return _width.wrappedValue }
        set { _width.wrappedValue = newValue }
    }
}
var rect = Rectangle()

print("Default height of rectangle : \(rect.height)")

rect.height = 4
print("New height of rectangle : \(rect.height)")

rect.height = 24
print("New height of rectangle (24) : \(rect.height)")

print()
print()
//Type Property Syntax
struct someStructure {
    static var storedTypeValue = "Some Structure Value"
    static var computedTypeValue: Int {
        return 1
    }
}

enum someEnumneration {
    static var storedTypeValue = "Some Enumeration Value"
    static var computedTypeValue: Int {
        return 2
    }
}

class someClass {
    static var storedTypeValue = "Some Class Value"
    static var computedTypeValue: Int {
        return 3
    }
}

//Querying and Setting Type Properties
print(someStructure.storedTypeValue)
someStructure.storedTypeValue = "Another Structure Value"
print(someStructure.storedTypeValue)
print(someStructure.computedTypeValue)
print()
print(someEnumneration.storedTypeValue)
print(someEnumneration.computedTypeValue)
print()
print(someClass.storedTypeValue)
print(someClass.computedTypeValue)


print("\n")
//
struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 6
print("Left Channel:")
print("Threshold Level = \(leftChannel.currentLevel)")
print("Max Input Level for All Channels = \(AudioChannel.maxInputLevelForAllChannels)")

rightChannel.currentLevel = 12
print("\nRight Channel:")
print("Threshold Level = \(rightChannel.currentLevel)")
print("Max Input Level for All Channels = \(AudioChannel.maxInputLevelForAllChannels)")


