//
//  Checkout.swift
//  Sneakult1
//
//  Created by student on 30/04/24.
//

import SwiftUI

struct CheckOutView: View {
    var body: some View {
        VStack {
            Text("Checkout")
            
                .foregroundColor(Color(red:43/255, green:100/255,blue:79/255))
                .font(.title)
                .fontWeight(.semibold)
                .padding(19)
            
            MycartCard()
            
            MycartCard()
            
            Spacer()
        }
        
    }
}

#Preview {
    CheckOutView()
}



struct MycartCard: View {
    
    var body: some View {
        HStack {
            Image("nike")
                .resizable()
                .frame(width: 135, height : 170)
                .cornerRadius(8)
            
            VStack(alignment : .leading) {
                Text("Air Jordan 1 Low")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("Light Pink")
                    .foregroundColor(.gray)
                
                HStack {
                    Text("Qty : 1")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                    Text("Size : 7 UK")
                        .foregroundColor(.gray)
                    
                    
                }
                
                
                
                VStack {
                    Text("Total Amount : ₹19,695")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 10)
            }
            .padding()
            
            
            
        }
        
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
    }
}

