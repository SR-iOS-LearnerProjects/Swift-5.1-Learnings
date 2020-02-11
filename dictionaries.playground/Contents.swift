import UIKit

// DICTIONARY
print("----------")
print("DICTIONARY")
print("----------")

var dict : [Int : String] = [1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five"]
print("Accessing dictionary using print() function:")
print(dict)

print("\nAccessing dictionary elements one-by-one:")
print("\nWith Wrapping:")
var someVar:String = dict[1] ?? ""
print(someVar)
print(dict[2]!)
print(dict[3]!)
print(dict[4]!)
print("\nWithout Wrapping:")
print(dict[1] as Any)
print(dict[2] as Any)
print(dict[3] as Any)
print(dict[4] as Any)

print("\nAccessing dictionary using for-in loop:")
for (key,value) in dict.enumerated() {
    print("Key - \(key) | Value - \(value)")
}

print("\nSEQUENCE BASED INTIALIZATION : array to dictionary")
var cities = ["Delhi","Bangalore","Bihar"]
var distances = [1600,600,60]

let cityDistDict = Dictionary(uniqueKeysWithValues: zip(cities, distances))

print(cityDistDict)

print("\nFILTERING")
print("---------")
var closeCities = cityDistDict.filter{$0.value < 1000}
print("\nafter filtering cities with distance < 1000")
print(closeCities)

print("\nGROUPING")
print("--------")
print("\nDictionary elements:")
var city = ["Delhi","Bangalore","Dehradun","Bihar","Hyderabad"]
print(city)
print("\nPrinting cities after grouping:")
var grpCities = Dictionary(grouping:city){$0.first!}
print(grpCities)

print("\nRemoving Key-Value Pairs:")
print("-------------------------")
print("\nPrinting dictionary elements:")
print(dict)

print("\nPrinting dictionary elements after removing key-value pair 2:")
var remove = dict.removeValue(forKey: 2)
print(dict)

print("\nMODIFY")
print("------")
var dict1 : [Int : String] = [1:"AB",2:"CD",3:"EF",4:"GH"]
print("\nNew Dictionary Elements:")
print(dict1)

print("\nDictionary after modifying:")
var oldVal = dict1.updateValue("New Value", forKey: 2)
print(dict1[1]!)
print(dict1[2]!)
print(dict1[3]!)
print(dict1[4]!)

print("\nCount & Empty Property:")
print("---")
print("Is Dictionary Empty ?? = \(dict1.isEmpty)")
print("\nTotal Elements in Dictionary = \(dict1.count)")


//Convert to Arrays
print("\n\nCONVERTING TO ARRAYS")
print("--------------------")

var DICT : [Int : String] = [1:"ONE",2:"TWO",3:"THREE"]
print("Dictionary Elements:")
print(DICT)

let keys = [Int](DICT.keys)
let values = [String](DICT.values)

print("\nKEYS\n----")
for item in keys {
    print(item)
}
print("\nVALUES\n------")
for item in values {
    print(item)
}


