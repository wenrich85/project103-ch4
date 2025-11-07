import UIKit

class Pet{
    // Attributes -> Data -> Variables or Constants
    
    var name: String
    var age: Int
    var owner: String
    
    //Initializer - Constructor
    init(name: String, age: Int, owner: String) {
        self.name = name
        self.age = age
        self.owner = owner
    }
//    Additional methods
}
//Creating an object
let pet1 = Pet(name: "Tato", age: 4, owner: "Fernanda")

//Reassign values
pet1.name = "Walter"

// How to access the properties of an object

print("Pet Name: \(pet1.name)")
