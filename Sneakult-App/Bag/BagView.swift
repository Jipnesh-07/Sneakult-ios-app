//
//  MyCart.swift
//  Sneakult1
//
//  Created by student on 30/04/24.
//

import SwiftUI

struct BagView: View {
    var body: some View {
        VStack {
            Text("My Cart")
                .foregroundColor(Color(red:43/255, green:100/255,blue:79/255))
                .font(.title)
                .fontWeight(.bold)
                .padding(19)
            
            Cart()
            
            Spacer()
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
