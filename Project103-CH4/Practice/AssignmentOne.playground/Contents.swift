import UIKit

var studentNames: [String] = ["Wendell", "Alex", "Linda", "Ivan", "Ken"]

var studentGrades: [String:[Int]] =
            [
                "Wendell": [84, 45, 55],
                "Alex" : [99, 76, 90],
                "Linda" : [98,78,85],
                "Ivan" : [90, 98, 97],
                "Ken" : [100, 85, 56]
            ]

studentGrades.forEach() { name, grades in
    print("\(name) has the following grades \(grades) and an average grade of \(grades.reduce(0, +) / grades.count)")
    
}
