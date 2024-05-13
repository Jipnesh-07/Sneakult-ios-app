//
//  ContactSupportSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

// Define a SwiftUI View called ContactSupportSetting
struct ContactSupportSetting: View {
    // Define contact information variables
    let supportEmail = "support@sneakult.com"
    let supportPhoneNumber = "+1 (123) 456-7890"
    let websiteURL = "https://www.sneakult.com"
    
    // Define the body of the view
    var body: some View {
        // Create a scrollable view
        ScrollView {
            // Vertical stack to arrange the text content
            VStack(alignment: .leading, spacing: 20) {
                // Title "Contact Support"
                Text("Contact Support")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Description of contacting support
                Text("If you have any questions, concerns, or feedback, please don't hesitate to contact our support team. We're here to help!")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Display email contact information
                ContactInformation(label: "Email", value: supportEmail)
                
                // Display phone contact information
                ContactInformation(label: "Phone", value: supportPhoneNumber)
                
                // Display website contact information
                ContactInformation(label: "Website", value: websiteURL)
                
                Spacer() // Spacer to push content to the top
            }
            .padding() // Add padding around the content
        }
    }
}

// Define a custom SwiftUI View called ContactInformation to display contact details
struct ContactInformation: View {
    var label: String
    var value: String
    
    // Define the body of the view
    var body: some View {
        // Vertical stack to arrange the contact information
        VStack(alignment: .leading, spacing: 8) {
            // Label for the contact information (e.g., "Email")
            Text(label)
                .font(.headline)
                .fontWeight(.bold)
            
            // Value of the contact information (e.g., email address or phone number)
            Text(value)
                .font(.body)
                .foregroundColor(.secondary)
            
            // You can add more information or links here as needed
        }
    }
}

// Preview provider to display ContactSupportSetting in preview canvas
struct ContactSupportSetting_Previews: PreviewProvider {
    static var previews: some View {
        ContactSupportSetting()
    }
}
