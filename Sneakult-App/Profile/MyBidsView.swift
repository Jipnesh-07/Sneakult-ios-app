//
//  MyBidsView.swift
//  Sneakult-App
//
//  Created by student on 01/05/24.
//

import SwiftUI

// Define a SwiftUI View called MyBidsView
struct MyBidsView: View {
    // State variable to track the selected segment of the picker
    @State private var selectedSegment = 0 // 0 represents the first segment, 1 represents the second segment
    
    var body: some View {
        VStack {
            // Picker for selecting between "Active" and "Completed" segments
            Picker(selection: $selectedSegment, label: Text("")) {
                Text("Active").tag(0)
                Text("Completed").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle()) // Apply segmented picker style
            .padding()
            
            // Display different content based on the selected segment
            if selectedSegment == 0 {
                // Display active bids content
                HStack(spacing: 15) {
                    Image("Bidimg3")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text("Nike Dunks 3A")
                        Text("Product Value: ₹8000").foregroundColor(.gray)
                        Text("Your Bid: ₹8097").foregroundColor(.gray)
                        Text("Time Left: 52sec").foregroundColor(.gray)
                    }
                    .padding()
                }
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
                .frame(width: .infinity)
                .padding()
                Spacer()
            } else if selectedSegment == 1 {
                // Display completed bids content
                HStack(spacing: 15) {
                    Image("Bidimg1")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text("Nike Dunks 3A")
                        Text("Product Value: ₹8000").foregroundColor(.gray)
                        Text("Your Bid: ₹8097").foregroundColor(.gray)
                        Text("Closed At: ₹9100").foregroundColor(.gray)
                    }
                    .padding()
                }
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
                .frame(width: .infinity)
                .padding()
                Spacer()
            }
        }
        .navigationTitle("My Bids") // Set navigation title
        .navigationBarTitleDisplayMode(.inline) // Set navigation bar title display mode
    }
}

// Preview provider to display MyBidsView in the preview canvas
struct MyBidsView_Previews: PreviewProvider {
    static var previews: some View {
        MyBidsView()
    }
}
