//
//  ProfessorsListView.swift
//  Project103-CH4
//
//  Created by Wendell Richards on 11/8/25.
//
import SwiftUI

struct ProfessorsListView: View{
    @State private var professors: [Professor] = [
        Professor(firstName: "Fernanda", lastName: "Murillo", phoneNumber: "5555555555"),
        Professor(firstName: "Samantha", lastName: "Jimenez", phoneNumber: "6666666666")
    ]
    @State private var professorInput: Professor = Professor(firstName: "", lastName: "", phoneNumber: "")
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.opacity(0.4)
                    .ignoresSafeArea()
                Text("Greatest Professors")
                VStack{
                    List{
                        ForEach(professors, id:\.id){ professor in
                            ProfessorListItemView(professor: professor)
                            
                        }
                    }//MARK: - END List
                    
                    VStack{
                        TextField("First Name", text: $professorInput.firstName )
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        TextField("Last Name", text: $professorInput.lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        TextField("Phone Number", text: $professorInput.phoneNumber)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        Button(action: addProfessor) {
                            Image(systemName: "person.crop.circle.fill.badge.plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                                .foregroundStyle(Color.orange)
//                                .background()
//                                .cornerRadius(30)
//                                .imageScale(.large)
                        }
                      
                            
                    }//MARK: END VStack - Input and Button
                    .padding(.horizontal)
                    
                }//MARK: - END VStack
                .navigationBarTitle("Professors", displayMode: .inline)

                
            }//MARK: - END ZStack
        }//MARK: - END NavigationView
    }//MARK: - END body
    func addProfessor() {
        professors.append(professorInput)
        professorInput = Professor(firstName: "", lastName: "", phoneNumber: "")
    }
    
    func cleanInput(_ string: String) -> String {
        return string.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}//MARK: - END View


#Preview {
    ProfessorsListView()
}
