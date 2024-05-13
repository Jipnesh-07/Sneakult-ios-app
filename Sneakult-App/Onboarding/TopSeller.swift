//
//  TopSeller.swift
//  Sneakult-App
//
//  Created by student on 01/05/24.
//

import SwiftUI

// Enum to represent image assets
enum ImageAsset: String {
    case singaa = "Image 4"
    case jordanSandhu = "Image 5"
    case aryanBhardwaj = "Image 6"
}

// Model for representing top sellers
struct TopSeller: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let followers: Int
    let image: ImageAsset
    var isSelected: Bool = false // Added isSelected property
    
    // Implement Equatable protocol
    static func == (lhs: TopSeller, rhs: TopSeller) -> Bool {
        return lhs.id == rhs.id
    }
}

// View for displaying and selecting top sellers
struct SellerView: View {
    @State private var selectedSellers: [TopSeller] = [] // State to keep track of selected sellers
    
    let topSellers: [TopSeller] = [
        // Sample data for top sellers
        TopSeller(name: "Singaa", followers: 2200, image: .singaa),
        TopSeller(name: "Jordan Sandhu", followers: 2200, image: .jordanSandhu),
        TopSeller(name: "Aryan Bhardwaj", followers: 2200, image: .aryanBhardwaj),
        // Repeat the sample data as needed
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    // Display top sellers in a grid
                    ForEach(topSellers) { seller in
                        VStack {
                            Image(seller.image.rawValue)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .opacity(selectedSellers.contains(seller) ? 0.5 : 1.0) // Adjust opacity based on selection
                                .onTapGesture {
                                    toggleSelection(for: seller)
                                }
                            Text(seller.name)
                                .font(.headline)
                            Text("\(seller.followers) followers")
                                .font(.subheadline)
                        }
                    }
                }
                .padding()
                
                // Next button
                Button(action: {
                    // Perform action when Next button is tapped
                    print("Next button tapped")
                }) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                        .cornerRadius(10)
                        .padding()
                }
            }
            .navigationTitle("Top Sellers") // Set navigation title
        }
    }
    
    // Function to toggle seller selection
    private func toggleSelection(for seller: TopSeller) {
        if selectedSellers.contains(seller) {
            selectedSellers.removeAll(where: { $0 == seller }) // Deselect if already selected
        } else {
            selectedSellers.append(seller) // Select the seller
        }
    }
}

// Preview for SellerView
struct SellerView_Previews: PreviewProvider {
    static var previews: some View {
        SellerView()
    }
}
