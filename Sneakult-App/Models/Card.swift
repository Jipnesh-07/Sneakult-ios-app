//
//  Card.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//



import Foundation

struct Card {
    var image: String
    var text: String
    var sellerName: String
    var price: Int
    
    init(image: String, text: String, sellerName: String, price: Int) {
        self.image = image
        self.text = text
        self.sellerName = sellerName
        self.price = price
    }
}

class CardDataModel {
    var cards : [Card] = []
    init () {
        let card1 = Card(image: "New5", text: "Nike Dunk Low", sellerName: "Riya", price: 23000)
        let card2 = Card(image: "New3", text: "Nike Retro 6G", sellerName: "Rajeev", price: 12567)
        let card3 = Card(image: "New1", text: "Air Jordan Mica", sellerName: "Matheew", price: 45678)
        let card4 = Card(image: "New2", text: "Air Jordan High", sellerName: "Aryan", price: 49078)
        cards.append(contentsOf: [card1,card2,card3,card4])
    }
    
    func getAllCards() -> [Card] {
        return self.cards
    }

    func createCard(image: String, text: String, sellerName: String, price: Int) -> Card {
        return Card(image: image, text: text, sellerName: sellerName, price: price)
    }
}

