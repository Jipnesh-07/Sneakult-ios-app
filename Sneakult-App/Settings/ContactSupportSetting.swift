//
//  ContactSupportSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

struct ContactSupportSetting: View {
    let supportEmail = "support@sneakult.com"
    let supportPhoneNumber = "+1 (123) 456-7890"
    let websiteURL = "https://www.sneakult.com"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Contact Support")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("If you have any questions, concerns, or feedback, please don't hesitate to contact our support team. We're here to help!")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                ContactInformation(label: "Email", value: supportEmail)
                
                ContactInformation(label: "Phone", value: supportPhoneNumber)
                
                ContactInformation(label: "Website", value: websiteURL)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContactInformation: View {
    var label: String
    var value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(value)
                .font(.body)
                .foregroundColor(.secondary)
            
            // You can add more information or links here as needed
        }
    }
}

struct ContactSupportSetting_Previews: PreviewProvider {
    static var previews: some View {
        ContactSupportSetting()
    }
}
