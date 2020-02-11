import UIKit

enum WeekDay {
    case Sun
    case Mon
    case Tue
    case Wed
    case Thu
    case Fri
    case Sat
}

var day = WeekDay.Fri
//day = .Fri

switch day {
    case .Sun:
        print("It's Sunday")
    case .Mon:
        print("It's Monday")
    case .Tue:
        print("It's Tuesday")
    case .Wed:
        print("It's Wednesday")
    case .Thu:
        print("It's Thursday")
    case .Fri:
        print("It's Friday")
    case .Sat:
        print("It's Saturday")
}

enum Student {
    case Name(String)
    case Mark(Int,Int,Int)
}

var stuDetails = Student.Name("Hello")
var stuMarks = Student.Mark(75,82,64)

switch stuMarks {
case .Name(let studName):
    print("Student name is : \(studName)")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("Student Marks are : \(Mark1), \(Mark2), \(Mark3)")
}

enum Beverage: CaseIterable{
    case coffee, tea, juice
}

let numOfBeverages = Beverage.allCases.count
print(numOfBeverages)

for beverage in Beverage.allCases {
    print(beverage)
}
