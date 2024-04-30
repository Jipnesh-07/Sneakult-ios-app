//
//  MainView.swift
//  App
//
//  Created by STUDENT on 19/04/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            KicksUIView()
                .tabItem {
                    Label("Kicks", systemImage: "shoe.fill")
                        
                }
            
            
            CommunityView()
                .tabItem {
                    Label("Community", systemImage: "person.3.fill")
                }
            
            
            BiddingView()
                .tabItem {
                    Label("Bidding", systemImage: "indianrupeesign.circle")
                }
            
            
            BagView()
                .tabItem {
                    Label("Bag", systemImage: "bag.fill")
                }
            
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        /*accentColor(selection == 0 ? .blue : .red)*/
        
    }
}

#Preview {
    MainView()
}
