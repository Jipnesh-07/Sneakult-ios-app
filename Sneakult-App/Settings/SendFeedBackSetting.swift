//
//  SendFeedBackSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

// Define a SwiftUI View called SendFeedBackSetting
struct SendFeedBackSetting: View {
    // Define state variables to store feedback text and confirmation alert status
    @State private var feedbackText = ""
    @State private var isShowingConfirmation = false
    
    // Define the body of the view
    var body: some View {
        // Vertical stack to arrange the UI elements
        VStack(alignment: .leading, spacing: 20) {
            // Title "Send Feedback"
            Text("Send Feedback")
                .font(.title)
                .fontWeight(.bold)
            
            // Description of sending feedback
            Text("We value your feedback! Please let us know if you have any suggestions, comments, or issues. Your input helps us improve.")
                .font(.body)
                .foregroundColor(.secondary)
            
            // Text editor for entering feedback
            TextEditor(text: $feedbackText)
                .frame(minHeight: 150) // Set minimum height for text editor
                .padding()
                .background(Color(UIColor.secondarySystemBackground)) // Set background color
                .cornerRadius(8) // Add corner radius
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2) // Add shadow
                
            // Button to submit feedback
            Button(action: {
                submitFeedback() // Call the submitFeedback function
            }) {
                Text("Submit Feedback") // Button text
                    .fontWeight(.bold) // Set font weight
                    .foregroundColor(.white) // Set text color
                    .padding() // Add padding
                    .frame(maxWidth: .infinity) // Set maximum width
                    .background(Color.blue) // Set background color
                    .cornerRadius(8) // Add corner radius
            }
            .padding(.top) // Add top padding
            
            // Alert to show confirmation message after feedback submission
            .alert(isPresented: $isShowingConfirmation) {
                Alert(title: Text("Thank You!"), message: Text("Your feedback has been submitted. We appreciate your input."), dismissButton: .default(Text("OK")))
            }
            
            Spacer() // Spacer to push content to the top
        }
        .padding() // Add padding around the content
    }
    
    // Function to submit feedback
    private func submitFeedback() {
        // Submit feedback logic goes here
        print("Feedback submitted: \(feedbackText)") // Print feedback text
        
        // Show confirmation alert
        isShowingConfirmation = true
        
        // Reset feedback text
        feedbackText = ""
    }
}

// Preview provider to display SendFeedBackSetting in preview canvas
struct SendFeedBackSetting_Previews: PreviewProvider {
    static var previews: some View {
        SendFeedBackSetting()
    }
}
