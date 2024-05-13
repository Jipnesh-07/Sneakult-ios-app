//
//  PrivacyPolicySetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

// Define a SwiftUI View called PrivacyPolicySetting
struct PrivacyPolicySetting: View {
    // Define the body of the view
    var body: some View {
        // Create a scrollable view
        ScrollView {
            // Vertical stack to arrange the text content
            VStack(alignment: .leading, spacing: 20) {
                // Title "Privacy Policy"
                Text("Privacy Policy")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Description of the privacy policy
                Text("Your privacy is important to us. We are committed to protecting the personal information you share with us. This privacy policy outlines how we collect, use, and safeguard your data.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Section "Information Collection and Use"
                SectionHeader(title: "Information Collection and Use")
                
                // Description of information collection
                Text("We collect personal information when you register an account, participate in auctions, or engage with community features. This may include your name, email address, and other relevant details.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Description of information use
                Text("Your information is used to provide and improve our services, customize your experience, and communicate with you about updates and promotions.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Section "Data Security and Retention"
                SectionHeader(title: "Data Security and Retention")
                
                // Description of data security measures
                Text("We implement industry-standard security measures to protect your personal information from unauthorized access, disclosure, or alteration.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Description of data retention policy
                Text("Your data is retained only for as long as necessary to fulfill the purposes outlined in this privacy policy or as required by law.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Section "Risks and Liability"
                SectionHeader(title: "Risks and Liability")
                
                // Description of risks involved
                Text("Please note that participating in auctions and engaging in other activities on our platform may involve risks, including but not limited to financial risks. While we take measures to mitigate these risks, we cannot guarantee absolute security.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Disclaimer about accepting risks
                Text("By using our app, you acknowledge and accept the inherent risks associated with bidding, resale, and community interactions.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Spacer() // Spacer to push content to the top
            }
            .padding() // Add padding around the content
        }
    }
}

// Define a custom SwiftUI View called SectionHeader to display section titles
struct SectionHeader: View {
    var title: String
    
    // Define the body of the view
    var body: some View {
        // Display section title
        Text(title)
            .font(.headline)
            .fontWeight(.bold)
    }
}

// Preview provider to display PrivacyPolicySetting in preview canvas
struct PrivacyPolicySetting_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicySetting()
    }
}
