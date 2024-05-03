//
//  PrivacyPolicySetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

struct PrivacyPolicySetting: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Privacy Policy")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Your privacy is important to us. We are committed to protecting the personal information you share with us. This privacy policy outlines how we collect, use, and safeguard your data.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                SectionHeader(title: "Information Collection and Use")
                
                Text("We collect personal information when you register an account, participate in auctions, or engage with community features. This may include your name, email address, and other relevant details.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Text("Your information is used to provide and improve our services, customize your experience, and communicate with you about updates and promotions.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                SectionHeader(title: "Data Security and Retention")
                
                Text("We implement industry-standard security measures to protect your personal information from unauthorized access, disclosure, or alteration.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Text("Your data is retained only for as long as necessary to fulfill the purposes outlined in this privacy policy or as required by law.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                SectionHeader(title: "Risks and Liability")
                
                Text("Please note that participating in auctions and engaging in other activities on our platform may involve risks, including but not limited to financial risks. While we take measures to mitigate these risks, we cannot guarantee absolute security.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Text("By using our app, you acknowledge and accept the inherent risks associated with bidding, resale, and community interactions.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SectionHeader: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .fontWeight(.bold)
    }
}

struct PrivacyPolicySetting_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicySetting()
    }
}

