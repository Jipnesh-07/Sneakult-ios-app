//
//  ChangePasswordSettings.swift
//  Sneakult-App
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

// Define a SwiftUI View called ChangePasswordSettings
struct ChangePasswordSettings: View {
    // Define state variables to store current and new passwords
    @State private var currentPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    
    // Define a state variable to track password match error
    @State private var isPasswordMatchError = false
    
    // Define the body of the view
    var body: some View {
        // Vertical stack to arrange the UI elements
        VStack(spacing: 20) {
            // Secure text field for current password input
            SecureField("Current Password", text: $currentPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Secure text field for new password input
            SecureField("New Password", text: $newPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Secure text field for confirming new password input
            SecureField("Confirm New Password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                // Check if new password and confirm password match
                .onChange(of: confirmPassword, perform: { value in
                    self.isPasswordMatchError = newPassword != confirmPassword
                })
            
            // Display error message if passwords do not match
            if isPasswordMatchError {
                Text("Passwords do not match")
                    .foregroundColor(.red)
                    .padding(.horizontal)
            }
            
            // Button to trigger password change action (currently empty)
            Button(action: {
                // Add action to change password
            }) {
                Text("Change Password")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
            
            Spacer() // Spacer to push content to the top
        }
        // Set the navigation bar title
        .navigationBarTitle("Change Password", displayMode: .inline)
        .padding() // Add padding around the content
    }
}

// Preview provider to display ChangePasswordSettings in preview canvas
struct ChangePasswordSettings_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordSettings()
    }
}
