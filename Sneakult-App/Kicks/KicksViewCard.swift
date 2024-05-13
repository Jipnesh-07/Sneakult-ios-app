//
//  KicksViewCard.swift
//  Sneakult-App
//
//  Created by STUDENT on 08/05/24.
//

import SwiftUI
import SceneKit

struct KicksViewCard: View {
    @State var scene: SCNScene?
    var card: Card
    
    var body: some View {
        VStack(alignment: .leading){
            if let scene = scene {
                CustomSceneView1(scene: scene)
                    .frame(width: 350, height: 350)
            }
            
            HStack(spacing: -3) {
                VStack(alignment: .leading, spacing: -2){
                    Text("Nike Dunk Low")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    //                        .padding()
                    
                    Text("Limited edition Dunks")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    Spacer()
                    
                }
                Spacer()
                
                
                Text("₹12567")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                
            }
            .frame(height: 40)
            .padding()
            .padding(.bottom,20)
            //            .background(Color(.darkGray))
            //            .background(Color(red: 255/255, green: 81/255, blue: 47/255))
            //            .background(Color(red:255/255, green: 95/255, blue: 109/255))
            .background(.clear)
            .opacity(0.9)
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 400)
        
        
        .background(LinearGradient(colors: [
            //            Color(.darkGray),
            
            Color(red:255/255, green: 95/255, blue: 109/255),
            Color(red: 255/255, green: 195/255, blue: 113/255),
            
            
        ], startPoint: .bottom, endPoint: .top))
        .cornerRadius(12)
        .shadow(radius: 1)
        .padding(.leading, 16)
        .padding(.trailing, 16)
        
        .onAppear {
            self.loadScene()
        }
        
    }
    func loadScene() {
        if let sceneName = card.sceneFileName {
            scene = SCNScene(named: sceneName)
        }
    }
}

