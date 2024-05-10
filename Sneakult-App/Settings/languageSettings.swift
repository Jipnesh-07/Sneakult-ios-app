//
//  languageSettings.swift
//  Sneakult-App
//
//  Created by IOS Development on 02/05/24.
//

import SwiftUI

struct languageSettings: View {
    let languages = ["English", "Spanish", "French", "German", "Hindi", "Mandrine"]
    @State private var selectedLanguageIndex = 0
    var body: some View {
        VStack {
            Text("Language")
                .font(.title)
            
                .padding()
            
            List {
                ForEach(0..<languages.count, id: \.self) { index in
                    Button(action: {
                        self.selectedLanguageIndex = index
                    }) {
                        HStack {
                            Text(self.languages[index])
                            Spacer()
                            if self.selectedLanguageIndex == index {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
        }
        //        .navigationBarTitle("Language Settings")
    }
}

struct LanguageSettings_Previews: PreviewProvider {
    static var previews: some View {
        languageSettings()
    }
}

