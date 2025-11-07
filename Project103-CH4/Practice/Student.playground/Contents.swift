import UIKit

class Student {
    var name: String
    var age: Int
    var grades: [Int]
    
    init(name: String, age: Int, grades: [Int]) {
        self.name = name
        self.age = age
        self.grades = grades
    }
    
    func calculateAverage() -> Int {
        if grades.count <= 0 {
            return 0
        }
        return grades.reduce(0, +) / grades.count
    }
    
    func studentsCurrentStatus() -> String {
        if calculateAverage() >= 60 {
            return "Passing"
        }
        return "Failing"
    }
    
    func printStudentInfo () {
        print("\nStudent: \(name) \nAverage: \(calculateAverage()) \nStatus: \(studentsCurrentStatus())")
    }
}

let student1 = Student(name: "Wendell", age: 40, grades: [88, 98, 78, 45, 77])

student1.printStudentInfo()
