//
//  ChangePasswordSettings.swift
//  Sneakult-App
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

struct ChangePasswordSettings: View {
    @State private var currentPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    @State private var isPasswordMatchError = false
    
    var body: some View {
        VStack(spacing: 20) {
            SecureField("Current Password", text: $currentPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("New Password", text: $newPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Confirm New Password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onChange(of: confirmPassword, perform: { value in
                    self.isPasswordMatchError = newPassword != confirmPassword
                })
            
            if isPasswordMatchError {
                Text("Passwords do not match")
                    .foregroundColor(.red)
                    .padding(.horizontal)
            }
            
            Button(action: {
            }) {
                Text("Change Password")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle("Change Password", displayMode: .inline)
        .padding()
    }
}

struct ChangePasswordSettings_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordSettings()
    }
}

