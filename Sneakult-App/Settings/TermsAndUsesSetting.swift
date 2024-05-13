//
//  TermsAndUsesSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

// Define a SwiftUI View called TermsAndUsesSetting
struct TermsAndUsesSetting: View {
    // Define the body of the view
    var body: some View {
        // Create a scrollable view
        ScrollView {
            // Vertical stack to arrange the text content
            VStack(alignment: .leading, spacing: 20) {
                // Title "Terms and Conditions"
                Text("Terms and Conditions")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                // Description of terms and conditions
                Text("Welcome to our app! By using our app, you agree to our Terms and Conditions. Please read these terms carefully before using our app.")
                    .foregroundColor(.secondary)
                
                // Section 1: Use of Our App
                Text("1. Use of Our App")
                    .fontWeight(.bold)
                
                // Description of app usage
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod magna nec nulla fermentum, vitae vestibulum turpis fringilla.")
                
                // Section 2: Privacy Policy
                Text("2. Privacy Policy")
                    .fontWeight(.bold)
                
                // Description of privacy policy with hyperlink
                Text("Your privacy is important to us. Please read our Privacy Policy [Privacy Policy](https://www.yourwebsite.com/privacy) to understand how we collect, use, and disclose information.")
                    .foregroundColor(.blue)
                    .onTapGesture {
                        if let url = URL(string: "https://www.yourwebsite.com/privacy") {
                            UIApplication.shared.open(url)
                        }
                    }
                
                // Section 3: Contact Us
                Text("3. Contact Us")
                    .fontWeight(.bold)
                
                // Description of how to contact for questions
                Text("If you have any questions about our Terms and Conditions, please contact us at support@yourwebsite.com.")
            }
            .padding() // Add padding around the content
        }
        // Set the navigation bar title
        .navigationBarTitle("Terms and Conditions", displayMode: .inline)
    }
}

// Preview provider to display TermsAndUsesSetting in preview canvas
struct TermsAndUsesSetting_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndUsesSetting()
    }
}
