//
//  AboutAppSetting.swift
//  Sneakult-App
//
//  Created by IOS Development on 03/05/24.
//

import SwiftUI

// Define a SwiftUI View called AboutAppSetting
struct AboutAppSetting: View {
    // Define the body of the view
    var body: some View {
        // Create a scrollable view
        ScrollView {
            // Vertical stack to arrange the text content
            VStack(alignment: .leading, spacing: 20) {
                // Title "About App"
                Text("About App")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Description of the app's purpose
                Text("Welcome to our app, where we aim to revolutionize the way you engage with the community and the marketplace. Here are some key features of our app:")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                // Custom view for displaying feature descriptions
                FeatureDescription(title: "Community Support", description: "Connect with like-minded individuals, share experiences, and offer support within our vibrant community forums.")
                
                FeatureDescription(title: "Bidding", description: "Experience the thrill of bidding and participating in auctions for a wide range of products, from electronics to collectibles.")
                
                FeatureDescription(title: "Resale Market", description: "Browse our resale market to discover unique items and explore sustainable shopping options. Sell your pre-loved items to give them a new life and reduce waste.")
                
                // Additional description of the app's mission
                Text("Our mission is to provide a platform where users can engage, interact, and transact with ease. Whether you're seeking community support, looking for great deals through bidding, or exploring the resale market, our app has something for everyone.")
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Spacer() // Spacer to push content to the top
            }
            .padding() // Add padding around the content
        }
    }
}

// Define a custom SwiftUI View called FeatureDescription to display feature titles and descriptions
struct FeatureDescription: View {
    var title: String
    var description: String
    
    // Define the body of the view
    var body: some View {
        // Vertical stack to arrange the feature title and description
        VStack(alignment: .leading, spacing: 8) {
            // Feature title
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            
            // Feature description
            Text(description)
                .font(.body)
                .foregroundColor(.secondary)
        }
    }
}

// Preview provider to display AboutAppSetting in preview canvas
struct AboutAppSetting_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppSetting()
    }
}
