//
//  KicksViewCard.swift
//  Sneakult-App
//
//  Created by STUDENT on 08/05/24.
//

import SwiftUI
import SceneKit

// View for displaying a card in the Kicks UI
struct KicksViewCard: View {
    @State var scene: SCNScene? // Scene to display the sneaker
    var card: Card // Data model for the card
    
    var body: some View {
        VStack(alignment: .leading){
            // Scene view displaying the sneaker
            if let scene = scene {
                CustomSceneView1(scene: scene)
                    .frame(width: 350, height: 350)
            }
            
            HStack(spacing: -3) {
                VStack(alignment: .leading, spacing: -2){
                    // Sneaker title
                    Text("Nike Dunk Low")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    // Description
                    Text("Limited edition Dunks")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                }
                Spacer()
                
                // Price
                Text("₹12567")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .frame(height: 40)
            .padding()
            .padding(.bottom,20)
            .background(.clear)
            .opacity(0.9)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 400)
        .background(LinearGradient(colors: [
            Color(red:255/255, green: 95/255, blue: 109/255),
            Color(red: 255/255, green: 195/255, blue: 113/255)
        ], startPoint: .bottom, endPoint: .top))
        .cornerRadius(12)
        .shadow(radius: 1)
        .padding(.leading, 16)
        .padding(.trailing, 16)
        .onAppear {
            self.loadScene() // Load the 3D scene of the sneaker
        }
    }
    
    // Function to load the 3D scene of the sneaker
    func loadScene() {
        if let sceneName = card.sceneFileName {
            scene = SCNScene(named: sceneName)
        }
    }
}
