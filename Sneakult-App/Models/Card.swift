//
//  Card.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//



import Foundation
import SceneKit

struct Card: Identifiable {
    var id: UUID
    var image: String
    var scene: SCNScene?
    var text: String
    var sellerName: String
    var price: Int
    
    init(id: UUID, image: String, scene: SCNScene?, text: String, sellerName: String, price: Int) {
        self.id = id
        self.image = image
        self.scene = SCNScene()
        self.text = text
        self.sellerName = sellerName
        self.price = price
    }
}

class CardDataModel {
    var cards : [Card] = []
    var cardSceneName: [String] = []
    init () {
        let card1 = Card(id: UUID(), image: "New5", scene: SCNScene(named: "Sneaker2.usdz"), text: "Nike Dunk Low", sellerName: "Riya", price: 23000)
        let card2 = Card(id: UUID(), image: "New6", scene: SCNScene(named: "Sneaker3.usdz"), text: "Nike Retro 6G", sellerName: "Rajeev", price: 12567)
        let card3 = Card(id: UUID(), image: "New1", scene: SCNScene(named: "Sneaker2.usdz"), text: "Air Jordan Mica", sellerName: "Matheew", price: 45678)
        let card4 = Card(id: UUID(), image: "New2", scene: SCNScene(named: "Sneaker3.usdz"), text: "Air Jordan High", sellerName: "Aryan", price: 49078)
        cards.append(contentsOf: [card1,card2,card3,card4])
        cardSceneName.append(contentsOf: ["Sneaker2.usdz", "Sneaker3.usdz", "sneaker_airforce", "sneaker_airforce"])
    }
    
    func getAllCards() -> [Card] {
        return self.cards
    }
    
    func getAllCardSceneNames() -> [String] { return self.cardSceneName }

    func createCard(id: UUID, image: String, scene: SCNScene?, text: String, sellerName: String, price: Int) -> Card {
        let card = Card(id: id, image: image, scene: nil, text: text, sellerName: sellerName, price: price)
        cards.append(card)
        return card
    }
    
//    func getSceneName(index: Int) -> String? {
//        let cards = getAllCards()
//        for i in 0...cards.count {
//            if(i == index) { return cards[i].scene?.rootNode.name }
//        }
//    }
}

