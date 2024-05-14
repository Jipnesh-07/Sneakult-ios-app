//
//  settingsView.swift
//  Sneakult
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

// Define a SwiftUI View called settingsView
struct settingsView: View {
    // Define two state variables to store the state of options
    @State private var option3IsOn = true
    @State private var option4IsOn = false
    
    // Define the app version
    let appVersion = "1.0"
    
    // Define the body of the view
    var body: some View {
        // Create a navigation view
        NavigationView {
            // Create a list to display settings
            List {
                // First section for app settings
                Section(header: Text("App Settings")) {
                    // Navigation link to change password settings
                    NavigationLink(destination: ChangePasswordSettings()) {
                        Text("Change Password")
                    }
                    // Toggle switch for push notifications
                    Toggle("Push Notifications", isOn: $option3IsOn)
                    // Navigation link to language settings
                    NavigationLink(destination: languageSettings()) {
                        Text("Language")
                    }
                }
                
                // Second section for about information
                Section(header: Text("About")) {
                    // Navigation link to about app settings
                    NavigationLink(destination: AboutAppSetting()) {
                        Text("About App")
                    }
                    // Navigation link to terms and use settings
                    NavigationLink(destination: TermsAndUsesSetting()) {
                        Text("Terms and Use")
                    }
                    // Navigation link to privacy policy settings
                    NavigationLink(destination: PrivacyPolicySetting()) {
                        Text("Privacy Policy")
                    }
                    // Display the app version
                    HStack {
                        Text("App Version")
                        Spacer()
                        Text(appVersion)
                    }
                }
                
                // Third section for contacting support
                Section(header: Text("Contact Us")) {
                    // Navigation link to contact support settings
                    NavigationLink(destination: ContactSupportSetting()) {
                        Text("Contact Support")
                    }
                    // Navigation link to send feedback settings
                    NavigationLink(destination: SendFeedBackSetting()) {
                        Text("Send Feedback")
                    }
                }
            }
            // Set the list style
            .listStyle(GroupedListStyle())
            // Set the title of navigation bar
            .navigationBarTitle("Settings")
            // Set the display mode of navigation bar title
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// Preview provider to display settingsView in preview canvas
struct SettingsView_Previews1: PreviewProvider {
    static var previews: some View {
        settingsView()
    }
}
