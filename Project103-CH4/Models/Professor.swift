//
//  Professor.swift
//  Project103-CH4
//
//  Created by Wendell Richards on 11/8/25.
//

import Foundation
import SwiftUI
import Combine

class Professor: ObservableObject {
   @Published var firstName: String
    var lastName: String
    var phoneNumber: String
    var id: UUID
    
    init(firstName: String, lastName: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.id = UUID()
    }
}
