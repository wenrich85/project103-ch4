import UIKit

// CLASS: Collections in Swift - Action we can perform with an Array, Set, and Dictionary

//-----------------
// CREATE / INITIALIZE
//-----------------

var fruitsArray: [String] = ["Banana", "Apple", "Orange"]
var fruitsSet: Set<String> = ["Banana", "Apple", "Orange"]
var fruitsDictionary: [String: String ] = ["Yellow": "Banana", "Red":"Apple", "Orange" : "Orange"]

print("\n----Creation---")
print("Array: \(fruitsArray)")
print("Set: \(fruitsSet)")
print("Dictionary: \(fruitsDictionary)")

//-------------------------------
// 2 ADD ELEMENTS
//-------------------------------
print("\n----Add Elements---")

fruitsArray.append("Mango")
fruitsSet.insert("Mango")
fruitsDictionary["Green"] = "Mango"

print("Array: \(fruitsArray)")
print("Set: \(fruitsSet)")
print("Dictionary: \(fruitsDictionary)")


//--------------------------------
// 3: REMOVING ELEMENTS
//________________________________

print("\n-----Remove Elements------")
fruitsArray.remove(at: 0)
print("Array: \(fruitsArray)")
fruitsSet.remove("Banana")
print("Set: \(fruitsSet)")
fruitsDictionary.removeValue(forKey: "Yellow")
print("Dictionay: \(fruitsDictionary)")

//-----------------------------
// 4: SEARCH / CHECK ELEMENT
//-----------------------------
print("\n-----Searching-----")
//Activiy: Ask Google -> Swift find an item in an Array
print("Array contains Apple? -> \(fruitsArray.contains("Apple"))")
print("Set contains Apple -> \(fruitsSet.contains("Apple"))")
print("Dictionary contains Apple? -> \(fruitsDictionary.keys.contains("Red"))")

//----------------------------
//5 ITERATE /TRAVEL
//----------------------------

print("\n----Iterate----")

print("\nArray:")
for (item) in fruitsArray {
    print(item)
}


print("\nSet:")
for fruit in fruitsSet {
    print(fruit)
}

print("\nDictionary: ")
for (color, fruit) in fruitsDictionary {
    print(fruit)
}

//---------------------------
// 6: Sorting
//---------------------------

print("\n-----Sorting----")
print("Array sorted ascending: ", fruitsArray.sorted(by: <))

print("Set Sorted ascending ", fruitsSet.sorted())

let sortedFruitsDictionary = fruitsDictionary.sorted { $0.value < $1.value }

print("Dictionary sorted: ", sortedFruitsDictionary)
print(UUID())
