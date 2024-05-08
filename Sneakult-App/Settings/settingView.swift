//
//  settingsView.swift
//  Sneakult
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

struct settingsView: View {
    @State private var option3IsOn = true
    @State private var option4IsOn = false

    let appVersion = "1.0" // Define the app version

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("App Settings")) {
                    NavigationLink(destination: ChangePasswordSettings()) {
                        Text("Change Password")
                    }
                    Toggle("Push Notifications", isOn: $option3IsOn)
                    NavigationLink(destination: languageSettings()) {
                        Text("Language")
                    }
                }
                
                Section(header: Text("About")) {
                    NavigationLink(destination: AboutAppSetting()) {
                        Text("About App")
                    }
                    NavigationLink(destination: TermsAndUsesSetting()) {
                        Text("Terms and Use")
                    }
                    NavigationLink(destination: PrivacyPolicySetting()) {
                        Text("Privacy Policy")
                    }
                    HStack {
                        Text("App Version")
                        Spacer()
                        Text(appVersion)
                    }
                }
                
                Section(header: Text("Contact Us")) {
                    NavigationLink(destination: ContactSupportSetting()) {
                        Text("Contact Support")
                    }
                    NavigationLink(destination: SendFeedBackSetting()) {
                        Text("Send Feedback")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        settingsView()
    }
}
