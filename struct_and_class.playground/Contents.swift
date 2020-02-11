import UIKit

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
print("\nResolution Structure and VideoMode Class are defined\n.\n.\n.")
print("Methods & Properties for Resolution Structure and VideoMode Class are defined\n.\n.\n.")

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("New Instances for Resolution Structure and VideoMode Class are created\n.\n.\n.")
print("Instance of Resolution Structure is : someResolution")
print("Instance of VideoMode Class is      : someVideoMode")

print(".\n.\n.")

print("Accessing width property of instances:")
print("The width of someResolution is : \(someResolution.width)")
print("The width of someVideoMode is  : \(someVideoMode.resolution.width)")

print(".\n.\n.")

print("Structures have Value Types\n---")
print("Memberwise Initialization done for Resolution Structure\n.\n.")
let hd = Resolution(width: 1920, height: 2048)

print("Assigned to constant \'hd\'\n.\n.")
print("Width of Resolution in hd : \(hd.width)\n.\n.")

var cinema = hd
cinema.width = 2048

print("Now a variable \'cinema\' is assigned with value of \'hd\'\n.\n.")
print("A copy of the existing instance of Resolution is made and assigned to cinema\n.\n.")
print("Now there are 2 Instances\n.\n.")

print("Width of Resolution in hd     : \(hd.width)")
print("Width of Resolution in cinema : \(cinema.width)")

print(".\n.\n.")

print("Classes have Reference Types\n---")

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

print("Properties of VideoMode Instance are given some values\n.\n.")

let alsoTenEighty = tenEighty
print("Framerate of tenEighty in VideoMode Instance : \(tenEighty.frameRate)\n.\n.")

alsoTenEighty.frameRate = 30.0

print("New property value for frameRate is set by taking another variable \'alsoTenEighty\'\n.\n.")

print("Framerate of tenEighty in VideoMode Instance : \(tenEighty.frameRate)")
print("Framerate of alsoTenEighty in VideoMode Instance : \(alsoTenEighty.frameRate)")

print(".\n.\n.")

print("Finding whether the constants or variables refer to the same instance of a Class\n.\n.")

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

