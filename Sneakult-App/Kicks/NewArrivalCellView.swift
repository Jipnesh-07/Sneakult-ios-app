//
//  NewArrivalCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct NewArrivalCellView: View {
    
    var card: Card
    
    var body: some View {
        VStack(alignment: .leading) {
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

#Preview {
    ScrollView(.horizontal) {
        HStack {
            NewArrivalCellView(card: CardDataModel().getAllCards()[0])
            NewArrivalCellView(card: CardDataModel().getAllCards()[1])
        }
    }
}


struct DetailView1: View {
    var body: some View {
        Text("Detail View")
    }
}

//struct NewArrivalCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewArrivalCellView(cards[0])
//    }
//}
//#endif

