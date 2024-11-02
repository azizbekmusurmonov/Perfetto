//
//  EditProfileView.swift
//  Profile
//
//  Created by Azizbek Musurmonov   on 01/11/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var name: String = ""
    @State private var phoneNumber: String = "+998 91 234 56 78"
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Tahrirlash")
                .font(.title)
                .padding(.bottom, 20)
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Phone Number", text: $phoneNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                // Save action
                print("Profile saved with name: \(name) and phone number: \(phoneNumber)")
            }) {
                Text("Saqlash")
                    .font(.system(size: 16, weight: .medium))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(8)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    EditProfileView()
}
