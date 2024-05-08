


import SwiftUI

struct WishListView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Checkoutcard()
            
            Checkoutcard()
            
            Spacer()
        }
        .padding(35)
        .navigationBarTitle("Wishlist")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    WishListView()
}

struct Checkoutcard: View {
    var body: some View {
        HStack(spacing: 20) { // Add spacing between the image and text
            Image("nike")
                .resizable()
                .frame(width: 90, height: 90)
                .cornerRadius(8)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 5) { // Add spacing between the text elements
                Text("Air Jordan 1 Low")
                    .font(.title3)
                Text("₹19,695")
                HStack(spacing: 10) { // Add spacing between the icon images
                    Image(systemName: "cart.fill")
                        .padding(.leading, 75)
                    Image(systemName: "trash")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity, maxHeight: 90)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
    }
}

