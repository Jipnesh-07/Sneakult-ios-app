//
//  SendFeedBackSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

struct SendFeedBackSetting: View {
    @State private var feedbackText = ""
    @State private var isShowingConfirmation = false

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Send Feedback")
                .font(.title)
                .fontWeight(.bold)
            
            Text("We value your feedback! Please let us know if you have any suggestions, comments, or issues. Your input helps us improve.")
                .font(.body)
                .foregroundColor(.secondary)
            
            TextEditor(text: $feedbackText)
                .frame(minHeight: 150)
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
            
            Button(action: {
                submitFeedback()
            }) {
                Text("Submit Feedback")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.top)
            .alert(isPresented: $isShowingConfirmation) {
                Alert(title: Text("Thank You!"), message: Text("Your feedback has been submitted. We appreciate your input."), dismissButton: .default(Text("OK")))
            }
            
            Spacer()
        }
        .padding()
    }
    
    private func submitFeedback() {
        // Submit feedback logic goes here
        print("Feedback submitted: \(feedbackText)")
        
        // Show confirmation alert
        isShowingConfirmation = true
        
        // Reset feedback text
        feedbackText = ""
    }
}

struct SendFeedBackSetting_Previews: PreviewProvider {
    static var previews: some View {
        SendFeedBackSetting()
    }
}
