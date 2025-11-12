//
//  ProfessorListItemView.swift
//  Project103-CH4
//
//  Created by Wendell Richards on 11/8/25.
//

import SwiftUI

struct ProfessorListItemView: View {
    @State var professor: Professor

    var body: some View {
        HStack {
            Text("\(professor.firstName) \(professor.lastName)" )
                .padding()
            Spacer()
            Text("📞\(formatPhoneNumber(professor.phoneNumber))")
//                .font(.system(size: 14))
                .padding()
                
        }
        .font(.system(size: 16))
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue.opacity(0.3))
        )
        
    }
    func formatPhoneNumber(_ rawNumber: String ) -> String {
        guard rawNumber.count == 10 else {
            return rawNumber
        }
        let areaCode = rawNumber.prefix(3)
        let localCode = rawNumber.dropFirst(3).prefix(3)
        let lastFour = rawNumber.dropFirst(6)
        
        return "(\(areaCode)) \(localCode)-\(lastFour)"
    }
}

#Preview {
    ProfessorListItemView(professor: Professor(firstName: "Fernanda", lastName: "Murillo", phoneNumber: "5555555555"))
}
