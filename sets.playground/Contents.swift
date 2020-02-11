import UIKit

// SET ONE
print("-------")
print("SET ONE")
print("-------")
var setOne = Set<Character>()
setOne.insert("s")
setOne.insert("r")
setOne.insert("i")
print("\n-- insert() applied --")
print("Accessing Set One Elements uing print() function:")
print(setOne)

setOne.insert("a")
setOne.insert("b")
setOne.insert("c")
print("\nSet One after adding more elements:")
print(setOne)

print("\n-- remove() applied --")
print("Set One after removing one element:")
setOne.remove("c")
print(setOne)

print("\n-- contains() applied --")
print("Checking whether setOne contains element 's':")
print(setOne.contains("s"))

print("\n-- count applied --")
print("Total Elements is the Set One : \(setOne.count)")

print("\nAccessing Set One using for-in loop:")
for items in setOne {
    print(items)
}

// SET TWO
print("\n-------")
print("SET TWO")
print("-------")
var setTwo = Set<Int>()
setTwo.insert(24)
setTwo.insert(10)
setTwo.insert(1997)
print("\nElements in Set Two : \(setTwo)")
print("\n-- removeAll() applied --")
setTwo.removeAll()
print("\nElements in Set Two : \(setTwo)")

// SET THREE
print("\n---------")
print("SET THREE")
print("---------")
var setThree = Set<String>()
setThree.insert("Sri")
setThree.insert("Hari")
setThree.insert("Mathew")
print("\nAccessing Set Three elements:")
print(setThree)

let names: Set = ["ABC","DEF","GHI"]
print("\n\nAccessing Elements : \(names)")
print("\n-- sorted() applied --")
print("\nSorted Elements : \(names.sorted())")

// SET FOUR
print("\n--------")
print("SET FOUR")
print("--------")
let even : Set = [2,4,6,8,10,12,14,16]
let odd : Set = [1,3,5,7,10,11,13,15]
let prime : Set = [2,3,5,7]
print("\nset EVEN  : \(even)")
print("\nset ODD   : \(odd)")
print("\nset PRIME : \(prime)")

print("\n-- union() applied --")
print(even.union(odd).sorted())

print("\n-- intersection() applied --")
print(even.intersection(odd).sorted())

print("\n-- subtracting() applied --")
print(even.subtracting(prime).sorted())
