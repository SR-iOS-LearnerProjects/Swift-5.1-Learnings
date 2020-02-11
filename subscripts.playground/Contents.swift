import UIKit

struct TimesTable {
    var multiplier: Int
    subscript(index: Int) -> Int {
//        get {
//            return multiplier * index
//        }
        return multiplier * index
    }
}

var timesTable = TimesTable(multiplier: 6)
print("4 times 6 is \(timesTable[4])")


//Subscript Options
print("\n")

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int){
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func isValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            return grid[(row * columns) + column]
        }
        set {
            return grid[(row * columns) + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 2)
matrix[0,0] = 2.5
matrix[1,0] = 4.5
print(matrix)



//Type Subscripts
print("\n")

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)

