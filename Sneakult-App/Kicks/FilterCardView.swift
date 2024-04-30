//
//  FilterCardView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//
import SwiftUI

struct FilterCardView: View {
    @State private var isFilterSheetPresented = false
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.white)
                .opacity(2)
                .blur(radius: 10)
                .frame(width: 300, height: 300)
            VStack(alignment: .leading, spacing: 1) {
                ScrollView (showsIndicators: false){
                    FilterSectionView(title: "Brand", options: ["Nike", "Adidas","New Balance", "Vans", "Puma", "Reebok"])
                    FilterSectionView(title: "Color", options: ["Red", "Blue", "Green", "Black", "White", "Yellow"])
                    FilterSectionView(title: "Size", options: ["7", "8", "8.5", "9", "10", "10.5"])
                    FilterSectionView(title: "Availability", options: ["In Stock", "Out of Stock"])
                }
                Spacer()
                Button("Apply Filter") {
                    dismiss()
                    isFilterSheetPresented = false
                }
                .frame(width: 300)
                .font(.body)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(8)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(16)
            .shadow(radius: 5)
            .frame(width: 350, height: 450)
        }
        .padding()
        .sheet(isPresented: $isFilterSheetPresented) {
            FilterCardView()
        }
        .frame(width: 300, height: 300)

    }
}
struct FilterSectionView: View {
    var title: String
    var options: [String]
    @State private var selectedOptions = Set<String>()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 6) {
                ForEach(options, id: \.self) { option in
                    FilterOptionRow(option: option, isSelected: selectedOptions.contains(option)) {
                        if selectedOptions.contains(option) {
                            selectedOptions.remove(option)
                        } else {
                            selectedOptions.insert(option)
                        }
                    }
                }
            }
            Button("Clear Selection") {
                selectedOptions.removeAll()
            }
            .foregroundColor(.blue)
            .padding(.top, 10)
        }
    }
}
struct FilterOptionRow: View {
    var option: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Text(option)
            .foregroundColor(isSelected ? .white : .primary)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(isSelected ? Color.blue : Color.gray.opacity(0.1))
            .cornerRadius(8)
            .onTapGesture {
                action()
            }
    }
}

struct FilterCardView_Previews: PreviewProvider {
    static var previews: some View {
        FilterCardView()
    }
}
