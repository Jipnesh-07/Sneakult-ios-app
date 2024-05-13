//
//  NewArrivalCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

// View for displaying individual new arrival cards
struct NewArrivalCellView: View {
    var card: Card // Data model for the new arrival card
    
    var body: some View {
        VStack(alignment: .leading) {
            // Sneaker image
            Image(card.image)
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Rectangle())
                .clipped()
                .cornerRadius(6)
                .background(Color(red: 228/255, green: 239/255, blue: 233/255))
                .shadow(radius: 1)
            
            // Sneaker name
            Text(card.text)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            // Seller name
            Text("By @\(card.sellerName)")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            // Sneaker price
            Text("₹\(card.price)")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.accent)
        }
    }
}

// Preview for NewArrivalCellView
#if DEBUG
struct NewArrivalCellView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.horizontal) {
            HStack {
                NewArrivalCellView(card: CardDataModel().getAllCards()[0])
                NewArrivalCellView(card: CardDataModel().getAllCards()[1])
            }
        }
    }
}
#endif
