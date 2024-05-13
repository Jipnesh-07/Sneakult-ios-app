



import Foundation
import SceneKit
import SwiftUI

struct Card {
    var id: UUID
    var image: String
    var sceneFileName: String? // Store the scene file name instead of SCNScene
    var text: String
    var sellerName: String
    var price: Int
}

class CardDataModel {
    var cards: [Card] = []
    
    init() {
        let card1 = Card(id: UUID(), image: "Mee", sceneFileName: "sneaker_airforce.usdz", text: "Nike Dunk Low", sellerName: "Riya", price: 23000)
        let card2 = Card(id: UUID(), image: "Mee3", sceneFileName: "sneaker_pegasustrail.usdz", text: "Nike Retro 6G", sellerName: "Rajeev", price: 12567)
        let card3 = Card(id: UUID(), image: "New11", sceneFileName: "Sneaker2.usdz", text: "Air Jordan Mica", sellerName: "Matheew", price: 45678)
        let card4 = Card(id: UUID(), image: "New12", sceneFileName: "Sneaker3.usdz", text: "Air Jordan High", sellerName: "Aryan", price: 49078)
        cards.append(contentsOf: [card1, card2, card3, card4])
    }
    
    func getAllCards() -> [Card] {
        return self.cards
    }
}

struct CustomSceneView1: UIViewRepresentable {
    func updateUIView(_ uiView: SCNView, context: Context) {
        uiView.scene = scene
    }
    
    var scene: SCNScene
    
    func makeUIView(context: Context) -> SCNView {
        // Create an SCNView
        let scnView = SCNView()
        
        // Set the scene to the SCNView
        scnView.scene = scene
        
        // Allow the user to manipulate the camera
        scnView.allowsCameraControl = true
        scnView.autoenablesDefaultLighting = true
        scnView.antialiasingMode = .multisampling2X
        scnView.backgroundColor = .clear
        
        
        // Show statistics such as fps and timing information
        //        scnView.showsStatistics = true
        
        return scnView
    }
}
