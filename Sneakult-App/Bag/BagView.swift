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
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(19)
            
            Cart()
            
            
            
            Spacer()
        }
    }
}

#Preview {
    BagView()
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
                
                
                HStack {
                    Stepper("",value: $quantity, in: 0...130)
                }
//                .padding()
              
                           
                        
                    
                
            }
            .padding()
            
        }
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
    }
}

