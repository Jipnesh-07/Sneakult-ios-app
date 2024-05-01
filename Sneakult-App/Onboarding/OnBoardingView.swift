//
//  OnBoardingView.swift
//  Sneakult
//
//  Created by student on 30/04/24.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        VStack {
            // image in background
            VStack {
                Text("What's in")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.title)
                VStack {
                    Text("SNEAKULT")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                }
                VStack(alignment:.trailing,spacing:-20){
                    
                HStack(alignment: .top) {
                    Image(systemName: "person.2")
                    //                        .resizable()
                    //                        .frame(width:30, height:25)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,3)
                    VStack(alignment: .leading) {
                        Text("Community")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        Text("Join our sneaker community to connect, share, and explore the latest trends together")
                            .font(.headline)
                            .fontWeight(.medium)
                            .lineLimit(3)
                    }
                    Spacer() // Add spacer to push text to the right
                }
                .padding()
                
                HStack(alignment: .top) {
                    Image(systemName: "indianrupeesign.arrow.circlepath")
                    //                        .resizable()
                    //                        .frame(width:30, height:30)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,3)
                    VStack(alignment: .leading) {
                        Text("Bidding")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        Text("Experience the thrill of bidding for your dream kicks in real-time auctions.")
                            .font(.headline)
                            .fontWeight(.medium)
                            .lineLimit(3)
                    }
                    Spacer()
                }
                .padding()
                
                HStack (alignment: .top){
                    Image(systemName: "bell")
                    //                        .resizable()
                    //                        .frame(width:30, height:30)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,3)
                    VStack(alignment: .leading) {
                        Text("Time Sensitive Notifications")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        Text("Stay ahead of the game with timely notifications on limited releases and exclusive deals")
                            .font(.headline)
                            .fontWeight(.medium)
                            .lineLimit(3)
                    }
                    Spacer()
                }
                .padding()
                }
                .padding(.top,100)
                
                Button(action: {
                    //Todo: Perform Action
                }, label: {
                    Text("Get started")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                })
                .frame(maxWidth: 300, maxHeight: 40)
                .padding(12)
                .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                .cornerRadius(16)
                .padding(.top,40)
                
                Spacer()
                
            }
            .padding(.top, 120)
        }
    }
}

#Preview {
    OnBoardingView()
}
