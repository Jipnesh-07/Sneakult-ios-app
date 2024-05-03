//
//  AboutAppSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

struct AboutAppSetting: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("About App")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Welcome to our app, where we aim to revolutionize the way you engage with the community and the marketplace. Here are some key features of our app:")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                FeatureDescription(title: "Community Support", description: "Connect with like-minded individuals, share experiences, and offer support within our vibrant community forums.")
                
                FeatureDescription(title: "Bidding", description: "Experience the thrill of bidding and participating in auctions for a wide range of products, from electronics to collectibles.")
                
                FeatureDescription(title: "Resale Market", description: "Browse our resale market to discover unique items and explore sustainable shopping options. Sell your pre-loved items to give them a new life and reduce waste.")
                
                Text("Our mission is to provide a platform where users can engage, interact, and transact with ease. Whether you're seeking community support, looking for great deals through bidding, or exploring the resale market, our app has something for everyone.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct FeatureDescription: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(description)
                .font(.body)
                .foregroundColor(.secondary)
        }
    }
}

struct AboutAppSetting_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppSetting()
    }
}
