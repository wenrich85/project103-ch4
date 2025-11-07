import UIKit

// Collections: Array, Set and Dictionary.

//Array
print("--- ARRAY---")
print("""
    These are the characteristics of an Array:
    1. It is ordered
    2. Duplicates are allowed
    3. Each item has a position (index)
    """)

// Defining and empty array

var arrayName: [Int] = []

var gradesArray: [Int] = [100, 90, 100]
var names: [String] = ["Ken", "Fernanda", "Ivan"]

// Printing the array using interpolation

print("This is an empty array \(arrayName)")

//Print the array of names to verify the order

print("This is an array of integer values: \(gradesArray)")


//SET
print("---SET---")
print("""
    These are the characteristics of a SET:
    1. It is unordered
    2. Items don't have a position
    3. Duplicates are not allowed
    """)

var categories = Set<String>() // Empty set
var genders: Set<String> = ["Female", "Male"]

print("This is an empty Set: \(categories).")
print("This is a set of Strings: \(genders)")
//Compare Arrays and sets
var grades: [Double] = [69.00, 89.99, 57.96]
var gradesSet: Set<Double> = [69.00, 89.99, 57.96]

print("This is the grades array: \(grades) \n This is the set grades: \(gradesSet)")

//Dictionary

print("--- DICTIONARY---")
print("""
    The are the characteristics of a Dictionary:
    1. Unordered
    2. Collection of Key-Value pairs
    3. Ecah key must be unique but the value can be duplicated
    """)

// Definiing a dictionary ->     var dictionaryName: [String:Double] = [:]

var gradesDictionary: [String : Int] = [
    "Fernanda" : 100,
    "Ivan" : 100,
    "FernandaM" : 50
]

var studentNames = ["Linda", "Ramone", "Wendell", "Linda"]

print("\(studentNames) is an Array.")

var studentIds: Set<Int> = [102, 101, 202]

print("The student's Ids are in a set: \(studentIds)")

var currentGrades: [String : Int] = [
    "Linda" : 95,
    "Ramone" : 95,
    "Wendell" : 85
]

print("The students current grades are in a dictionary: \(currentGrades)")

var courseNames: [String] = ["Math", "Science", "History"]

print("The list of courses are in an Array: \(courseNames)")

var bookPrices: [String : Double] = [
    "Title 1" : 34.50,
    "Title 2" : 45.50,
    "Title 3" : 55.00
]

print("The book prices are in a Dictionary \(bookPrices)")

var purchaseOrders: [String] = ["Title 1", "Title 2", "Title 3"]

print("The purchase orders are in an Array to keep their order: \(purchaseOrders)")
