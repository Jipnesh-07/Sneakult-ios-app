//
//  MyCart.swift
//  Sneakult1
//
//  Created by student on 30/04/24.
//

import SwiftUI

struct BagView: View {
    @State private var isFavoriteTapped = false // Step 2
    
    var body: some View {
        NavigationStack {
            VStack {
                // Your existing content here
                
                HStack(alignment: .top) {
                    // Other views
                }
                .padding()
                
                Cart()
                
                Spacer()
            }
            .navigationTitle("Bag")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isFavoriteTapped.toggle() // Step 3
                    }) {
                        Image(systemName: isFavoriteTapped ? "heart.fill" : "heart.fill")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                }
            }
            
            NavigationLink(destination: WishListView(), isActive: $isFavoriteTapped) {
                EmptyView() // Step 4
            }
        }
    }
}


struct Cart: View {
    @State private var quantity = 1
    
    var body: some View {
        HStack {
            Image("nike")
                .resizable()
                .frame(width: 135, height: 150)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text("Air Jordan 1 Low")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("Light Pink")
                    .foregroundColor(.gray)
                
                Stepper("Qty: \(quantity)", value: $quantity, in: 0...130)
                    .padding(.top, 8)
            }
            .padding()
        }
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
        .safeAreaPadding()
    }
    
}

#Preview {
    BagView()
}
