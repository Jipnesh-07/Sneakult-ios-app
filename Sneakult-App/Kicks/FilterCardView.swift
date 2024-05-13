//
//  FilterCardView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//
import SwiftUI

// View for the filter card
struct FilterCardView: View {
    @State private var isFilterSheetPresented = false
    @Environment (\.dismiss) var dismiss // Environment variable to dismiss the sheet
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color.white)
                .opacity(2)
                .blur(radius: 10)
                .frame(width: 300, height: 800)
            
            VStack(alignment: .leading, spacing: 1) {
                ScrollView (showsIndicators: false){
                    // Filter sections for different filter categories
                    FilterSectionView(title: "Brand", options: ["Nike", "Adidas","New Balance", "Vans", "Puma", "Reebok"])
                    FilterSectionView(title: "Color", options: ["Red", "Blue", "Green", "Black", "White", "Yellow"])
                    FilterSectionView(title: "Size", options: ["7", "8", "8.5", "9", "10", "10.5"])
                    FilterSectionView(title: "Availability", options: ["In Stock", "Out of Stock"])
                }
                Spacer()
                // Button to apply filter
                Button("Apply Filter") {
                    dismiss() // Dismisses the filter sheet
                    isFilterSheetPresented = false
                }
                .frame(width: 300)
                .font(.body)
                .foregroundColor(.white)
                .padding()
                .background(Color(.accent))
                .cornerRadius(8)
            }
            .padding(.top,45)
        }
        .sheet(isPresented: $isFilterSheetPresented) {
            FilterCardView() // Presents the filter sheet
        }
        .frame(width: 300, height: 300)
        
    }
}

// View for a single filter section
struct FilterSectionView: View {
    var title: String
    var options: [String]
    @State private var selectedOptions = Set<String>() // State variable to keep track of selected options
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title) // Title of the filter section
                .font(.headline)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 6) {
                ForEach(options, id: \.self) { option in
                    // Row for each filter option
                    FilterOptionRow(option: option, isSelected: selectedOptions.contains(option)) {
                        if selectedOptions.contains(option) {
                            selectedOptions.remove(option) // Remove option if already selected
                        } else {
                            selectedOptions.insert(option) // Add option if not selected
                        }
                    }
                }
            }
            // Button to clear selection in the section
            Button("Clear Selection") {
                selectedOptions.removeAll() // Clears all selected options
            }
            .foregroundColor(Color(.accent))
            .padding(.top, 10)
        }
    }
}

// View for a single filter option row
struct FilterOptionRow: View {
    var option: String
    var isSelected: Bool
    var action: () -> Void // Action to perform when the option is tapped
    
    var body: some View {
        Text(option) // Text displaying the option
            .foregroundColor(isSelected ? .white : .primary)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(isSelected ? Color.accent : Color.gray.opacity(0.1))
            .cornerRadius(8)
            .onTapGesture {
                action() // Performs the action when tapped
            }
    }
}

// Preview provider for the filter card view
struct FilterCardView_Previews: PreviewProvider {
    static var previews: some View {
        FilterCardView()
    }
}
