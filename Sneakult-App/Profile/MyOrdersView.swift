//
//  MyOrdersView.swift
//  Sneakult-App
//
//  Created by student on 01/05/24.
//



import SwiftUI

struct MyOrdersView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 30){
                    OrdersView()
                    OrdersView()
                    HStack(spacing : 15){
                        Image("nike")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text("Air Jordan 1 Low")
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(red:43/255, green:100/255,blue:79/255))
                            Text("Size : UK 6")
                                .foregroundColor(.gray)
                            Text("Price : ₹19,695")
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                    
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
                    .frame(width: .infinity)
                }
                .padding()
                
            }
            .navigationTitle("My Orders")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    MyOrdersView()
}

struct OrdersView: View {
    var body: some View {
       
        HStack(spacing : 15){
            Image("nike")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text("Air Jordan 1 Low")
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(red:43/255, green:100/255,blue:79/255))
                Text("Your Bid : ₹8097")
                    .foregroundColor(.gray)
                Text("Time Left : 52sec")
                    .foregroundColor(.gray)
            }
            .padding()
        }
        
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
        .frame(width: .infinity)
    
}
}

