//
//  FavoriteMoviesView.swift
//  Project103-CH4
//
//  Created by Wendell Richards on 11/6/25.
//

import SwiftUI

struct FavoriteMoviesView: View {
//MARK: - Variables
    @State private var movieSet: Set<String> = ["Forrest Gump", "Carlito's Way", "Belly"]
    @State private var titleInput = ""
    @State var showAlert: Bool = false
    
    
    var body: some View {
        NavigationView{
            
            ZStack{
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                
                VStack{
                   Text("Favorite Movies")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    //MARK: - Movies List
                    List {
                        ForEach(Array(movieSet), id: \.self ) { title in
                            Text(title)
                        }
                    }
                    HStack{
                        TextField("Add new movie...", text: $titleInput )
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        Button(action: addMovie) {
                            Image(systemName: "plus.circle.fill")
//                                .padding()
                                .foregroundStyle(Color.blue)
                                .cornerRadius(30)
                                .imageScale(.large)
                        }
                            
                    }//END HStack - Input and Button
                    .padding()
                }.navigationBarTitle("Movie List", displayMode: .inline)
                
                    .toolbar {
                        Button(action: {}){
                            Label("Sort", systemImage: "arrow.up.arrow.down.circle")
                        }
                           
                    }
            }
            .alert("Duplicate Movie", isPresented: $showAlert) {
                Button("Ok", role: .cancel){}
            } message: {
                Text("The movie is already in your list.")
            }
        }
        
            
        }
    func addMovie() {
//        1. Clean data - Remove spaces
        let trimmedTitle = titleInput.trimmingCharacters(in: .whitespacesAndNewlines)
//        2. If the trimmed movie name is empty, then stop the function and exit
        guard !trimmedTitle.isEmpty else { return }
//        3. Check for duplicated items
        if movieSet.contains(trimmedTitle){
            //Display Alert
            showAlert = true
        }else{
            movieSet.insert(trimmedTitle)
        }
//        4. Clear the form
        titleInput = ""

    }
}

#Preview {
    FavoriteMoviesView()
}
