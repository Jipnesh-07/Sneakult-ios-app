//
//  languageSettings.swift
//  Sneakult-App
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

// Define a SwiftUI View called languageSettings
struct languageSettings: View {
    // Define an array to store available languages
    let languages = ["English", "Spanish", "French", "German", "Hindi", "Mandrine"]
    
    // Define a state variable to store the index of the selected language
    @State private var selectedLanguageIndex = 0
    
    // Define the body of the view
    var body: some View {
        // Create a vertical stack to arrange the UI elements
        VStack {
            // Display the title "Language"
            Text("Language")
                .font(.title)
                .padding()
            
            // Create a list to display language options
            List {
                // Iterate through each language in the array
                ForEach(0..<languages.count, id: \.self) { index in
                    // Create a button for each language
                    Button(action: {
                        // Update the selectedLanguageIndex when the button is tapped
                        self.selectedLanguageIndex = index
                    }) {
                        // Horizontal stack to display language name and checkmark if selected
                        HStack {
                            Text(self.languages[index]) // Display language name
                            Spacer() // Add spacer for flexible layout
                            // Display a checkmark if the language is selected
                            if self.selectedLanguageIndex == index {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
        }
        // Navigation bar title (commented out for now)
        // .navigationBarTitle("Language Settings")
    }
}

// Preview provider to display languageSettings in preview canvas
struct LanguageSettings_Previews: PreviewProvider {
    static var previews: some View {
        languageSettings()
    }
}
