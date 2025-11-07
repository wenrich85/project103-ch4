//
//  ShoppingListView.swift
//  Project103-CH4
//
//  Created by Wendell Richards on 11/4/25.
//

import SwiftUI

struct ShoppingListView: View{
    
    @State private var shoppingList: [String] = [
        "Eggs",
        "Apples"
    ]
    @State private var item: String = ""
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                
                VStack{
                    
                    Text("Shopping List")
                        .font(.largeTitle)
                        .foregroundStyle(Color.blue)
                        .padding()
                    
                    // List of Items
                    List {
                        ForEach(shoppingList, id: \.self){ item in
                            Text(item)
                        }
                    }
                    HStack{
                        TextField("Add new shopping item...", text: $item )
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.2))
                            .padding()
                        
                        Button(action: {
                            //Add item - here the code
                            if !item.isEmpty {
                                shoppingList.append(item)
                                item = ""
                            }
                        }) {
                            Image(systemName: "arrowshape.up.fill")
                                .padding()
                                .background(Color.blue)
                                .foregroundStyle(Color.white)
                                .cornerRadius(30)
                        }
                            
                    }//END HStack - Input and Button
                    .padding()
                    
                }//END VStack - Main Container
                
            }//END ZStack - Background Color
            .navigationBarTitle("Listify", displayMode: .inline)
            
            .toolbar {
                Menu {
                    Button("Sort A -> Z") {
                        //Here the code
                        shoppingList.sort()
                    }
                    Button("Reversed Order") {
                        // Here the code
                        shoppingList.reverse()
                    }
                }//END: Menu
                label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                        
                }//END: label
            }//END: toolbar
        }//END: NavigationView
    }//END: Body
        
}// END: ShoppingListView
#Preview {
    ShoppingListView()
}
