//
//  StudentGradesView.swift
//  Project103-CH4
//
//  Created by Wendell Richards on 11/6/25.
//
import SwiftUI

struct StudentGradesView: View {
    @State private var student = Student()
    @State private var studentList: [Student] = []
    @State private var studentNameInput = ""
    @State private var studentGradeInput = 0
    
    var classAverage: Double {
        let total = studentList.map {$0.grade}.reduce(0, +)
        return total / Double(studentList.count)
    }
    var body: some View {
        NavigationView{
            
            ZStack {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                
                VStack{
                    
                    Text("Student Grades")
                        .font(.largeTitle)
                        .foregroundStyle(Color.blue)
                        .padding()
                    if classAverage > 0 {
                        Text("Average Grade: \(classAverage, specifier: "%.1f")")
                            .foregroundStyle(.secondary)
                    }
                    
                    // List of Items
                    List {
                        ForEach(studentList, id: \.id){ student in
                            Text("\(student.name) - \(student.grade, specifier: "%.2f")")
                        }
                    }
                    .padding()
                    HStack{
                        TextField("Student Name", text: $student.name )
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.2))
                            .padding()
                        TextField("Grade", value: $student.grade, format: .number )
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.2))
                            .padding()
                        
                        Button(action: {
                            //Add item - here the code
                            if !student.name.isEmpty && student.grade > -1{
                                studentList.append(student)
                                student = Student()
                            }
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .padding()
                                .background(Color.blue)
                                .foregroundStyle(Color.white)
                                .cornerRadius(30)
                        }
                            
                    }//END HStack - Input and Button
                    .padding()
                    
                }//END VStack - Main Container
                
            }//END ZStack - Background Color
            .navigationBarTitle("GradeBook", displayMode: .inline)
            
            .toolbar {
                Menu {
                    Button("Sort Ascending") {
                        //Here the code
//                        shoppingList.sort()
                        studentList.sort(){ $0.grade < $1.grade}
                    }
                    Button("Sort Descending") {
                        // Here the code
                        studentList.sort() {$0.grade > $1.grade }
                    }
                }//END: Menu
                label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                        
                }//END: label
            }//END: toolbar
        }//END: NavigationView

    }
}


#Preview {
    StudentGradesView()
}
