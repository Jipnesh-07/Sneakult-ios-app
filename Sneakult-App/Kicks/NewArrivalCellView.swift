//
//  NewArrivalCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct NewArrivalCellView: View {
    
    @State private var selectedCard: Card?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                if let card = selectedCard {
                    Image(card.image)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Rectangle())
                        .clipped()
                        .cornerRadius(6)
                    
                    Text(card.text)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Text("By @\(card.sellerName)")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text("₹\(card.price)")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.accent)
                }
            }
        }
        .onAppear {
            let cardDataModel = CardDataModel()
            let allCards = cardDataModel.getAllCards()
            self.selectedCard = allCards.randomElement()
        }
    }
}


struct DetailView1: View {
    var body: some View {
        Text("Detail View")
    }
}

#if DEBUG
struct NewArrivalCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewArrivalCellView()
    }
}
#endif

