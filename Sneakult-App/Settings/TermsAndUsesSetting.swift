//
//  TermsAndUsesSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

struct TermsAndUsesSetting: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Terms and Conditions")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Text("Welcome to our app! By using our app, you agree to our Terms and Conditions. Please read these terms carefully before using our app.")
                    .foregroundColor(.secondary)
                
                Text("1. Use of Our App")
                    .fontWeight(.bold)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod magna nec nulla fermentum, vitae vestibulum turpis fringilla.")
                
                Text("2. Privacy Policy")
                    .fontWeight(.bold)
                
                Text("Your privacy is important to us. Please read our Privacy Policy [Privacy Policy](https://www.yourwebsite.com/privacy) to understand how we collect, use, and disclose information.")
                    .foregroundColor(.blue)
                    .onTapGesture {
                        if let url = URL(string: "https://www.yourwebsite.com/privacy") {
                            UIApplication.shared.open(url)
                        }
                    }
                
                Text("3. Contact Us")
                    .fontWeight(.bold)
                
                Text("If you have any questions about our Terms and Conditions, please contact us at support@yourwebsite.com.")
            }
            .padding()
        }
        .navigationBarTitle("Terms and Conditions", displayMode: .inline)
    }
}

struct TermsAndUsesSetting_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndUsesSetting()
    }
}
