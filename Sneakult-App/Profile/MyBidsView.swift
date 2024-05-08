//
//  MyBidsView.swift
//  Sneakult-App
//
//  Created by student on 01/05/24.
//

import SwiftUI

struct MyBidsView: View {
    @State private var selectedSegment = 0 // 0 represents the first segment, 1 represents the second segment

    var body: some View {
        VStack {
//            Text("My Bids")
//                .foregroundColor(Color(red:43/255, green:100/255,blue:79/255))
//                .font(.title2)
//                .fontWeight(.bold)
//                .padding()
            
            Picker(selection: $selectedSegment, label: Text("")) {
                Text("Active").tag(0)
                Text("Completed").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
//            Spacer()
            
            if selectedSegment == 0 {
                HStack(spacing : 15){
                    Image("Bidimg3")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text("Nike Dunks 3A")
                        Text("Product Value : ₹8000")
                            .foregroundColor(.gray)
                        Text("Your Bid : ₹8097")
                            .foregroundColor(.gray)
                        Text("Time Left : 52sec")
                            .foregroundColor(.gray)
                    }
                    .padding()
                }
                
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
                .frame(width: .infinity)
                
                
                .padding()
                Spacer()
                
               
          
                
            }
           if selectedSegment == 1 {
               
               HStack(spacing : 15){
                   Image("Bidimg1")
                       .resizable()
                       .frame(width: 120, height: 120)
                       .cornerRadius(8)
                   VStack(alignment: .leading) {
                       Text("Nike Dunks 3A")
                       Text("Product Value : ₹8000")
                           .foregroundColor(.gray)
                       Text("Your Bid : ₹8097")
                           .foregroundColor(.gray)
                       Text("Closed At: ₹9100")
                           .foregroundColor(.gray)
                   }
                   .padding()
               }
               
               .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary))
               .frame(width: .infinity)
               
               
               .padding()
               Spacer()
               
              
               
    
            }
        }
        .navigationTitle("MyBids")
        .navigationBarTitleDisplayMode(.inline)
         

        }
    }


struct MyBidsView_Previews: PreviewProvider {
    static var previews: some View {
        MyBidsView()
    }
}

