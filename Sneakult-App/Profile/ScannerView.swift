//
//  ScannerView.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import SwiftUI

// Define a SwiftUI View called ScannerView
struct ScannerView: View {
    var body: some View {
        VStack {
            // Display a rounded rectangle representing the scanner area
            RoundedRectangle(cornerRadius: 25.0)
                .frame(maxWidth: .infinity, maxHeight: 300) // Set frame to fill available space
                .foregroundColor(Color(.white)) // Set background color
                .shadow(radius: 12) // Add shadow effect
            
            // Display a button with an icon for toggling scanner settings
            Image(systemName: "slider.horizontal.3")
                .padding() // Add padding around the icon
                .frame(width: 40, height: 35) // Set fixed size for the button
                .foregroundColor(.accentColor) // Set icon color
                .background(Color(.systemGray6)) // Set background color for the button
                .cornerRadius(12) // Add corner radius to the button
        }
    }
}

// Preview provider to display ScannerView in the preview canvas
#Preview {
    ScannerView()
}
