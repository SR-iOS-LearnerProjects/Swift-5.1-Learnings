import UIKit



struct studentMarks {
    var mark1 = 300
    var mark2 = 200
    var mark3 = 100
}

let marks = studentMarks()
print("Marks1 = \(marks.mark1)")
print("Marks2 = \(marks.mark2)")
print("Marks3 = \(marks.mark3)")

struct empID {
    var eid1: Int
    var eid2: Int
    var eid3: Int
    
    init(eid1: Int, eid2: Int, eid3: Int){
        self.eid1 = eid1
        self.eid2 = eid2
        self.eid3 = eid3
    }
}

var emps = empID(eid1: 008, eid2: 018, eid3: 108)
print("Emp ID - 1 : \(emps.eid1)")
print("Emp ID - 2 : \(emps.eid2)")
print("Emp ID - 3 : \(emps.eid3)")

