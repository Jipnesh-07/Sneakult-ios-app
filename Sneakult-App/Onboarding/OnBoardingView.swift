//
//  OnBoardingView.swift
//  Sneakult
//
//  Created by student on 30/04/24.
//

import SwiftUI

// View for Onboarding screen
struct OnBoardingView: View {
    var body: some View {
        VStack {
            // Background image and content
            VStack {
                Text("What's in")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.title)
                
                // App name
                VStack {
                    Text("SNEAKULT")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                }
                
                // Features with icons and descriptions
                VStack(alignment:.trailing,spacing:-20){
                    // Community feature
                    HStack(alignment: .top) {
                        Image(systemName: "person.2")
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
                        Spacer()
                    }
                    .padding()
                    
                    // Bidding feature
                    HStack(alignment: .top) {
                        Image(systemName: "indianrupeesign.arrow.circlepath")
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
                    
                    // Notifications feature
                    HStack (alignment: .top){
                        Image(systemName: "bell")
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
                
                // Get started button
                Button(action: {
                    // Action on button tap
                }, label: {
                    Text("Get started")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
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

// Preview for OnBoardingView
#if DEBUG
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
#endif
