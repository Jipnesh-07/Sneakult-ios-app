//
//  NewArrivalCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct NewArrivalCellView: View {
    
    
    
    @State private var Seller = ""
    @State private var shoe: [String] = ["New2", "New3",  "Shoe7", "Shoe8", "Shoe10","shoes"]
    @State private var selectShoe: String = ""

    var body: some View {
        
            ScrollView{
                VStack(alignment: .leading) {
                    Image(selectShoe)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Rectangle())
                        .clipped()
                        .cornerRadius(6)
                    
                    Text("Nike Dunk Low")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        
                    Text("By @Selena")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text("₹23000")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.accent)
                    
                    
                    
                    
                }
                
            }
                .onAppear {
            selectShoe = shoe.randomElement() ?? "defaultShoeImage"
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

//#Preview{
//    NewArrivalCellView(kick: )
//}
