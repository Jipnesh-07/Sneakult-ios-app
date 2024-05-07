//
//  BidCell.swift
//  Sneakult-App
//
//  Created by STUDENT on 07/05/24.
//

import SwiftUI

struct BidCell: View {
    @State var price: String
    @State var user: String
    
    var body: some View {
        HStack {
            Text("₹ \(price)")
                .bold()
                .font(.largeTitle)
            Spacer()
            Text("\(user)")
                .foregroundStyle(.secondary)
            
        }
        .padding()
        Divider()
    }
}

#Preview {
    BidCell(price: "10000", user: "John Doe")
}
