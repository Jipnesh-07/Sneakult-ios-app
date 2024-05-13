//
//  MyOrdersView.swift
//  Sneakult-App
//
//  Created by student on 01/05/24.
//



import SwiftUI

// Define a SwiftUI View called MyOrdersView
struct MyOrdersView: View {
    var body: some View {
        // Use NavigationStack to allow navigation within the view
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    // Display OrdersView to show individual orders
                    OrdersView()
                    
                    // Display a sample order
                    HStack(spacing: 15) {
                        Image("Bidimg1")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text("Air Jordan 1 Low")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                            Text("Size: UK 6")
                                .foregroundColor(.gray)
                            Text("Price: ₹19,695")
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
                    .frame(width: .infinity)
                }
                .padding()
            }
            .navigationTitle("My Orders") // Set navigation title
            .navigationBarTitleDisplayMode(.inline) // Set navigation bar title display mode
        }
    }
}

// Preview provider to display MyOrdersView in the preview canvas
#Preview {
    MyOrdersView()
}

// Define a SwiftUI View called OrdersView to represent individual orders
struct OrdersView: View {
    var body: some View {
        // Display a sample order
        HStack(spacing: 15) {
            Image("Bidimg9")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text("Air Jordan 1 Low")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                Text("Size: US 7")
                    .foregroundColor(.gray)
                Text("Price: ₹14,908")
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
        .frame(width: .infinity)
    }
}
