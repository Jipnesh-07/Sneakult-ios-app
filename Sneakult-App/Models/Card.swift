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
        let card1 = Card(image: "shoe2", text: "Lorem ipsum dolor sit", sellerName: "Riya", price: 50)
        let card2 = Card(image: "shoe8", text: "Sed do eiusmod tempor ", sellerName: "Bhana", price: 75)
        let card3 = Card(image: "shoe10", text: "Ut enim ad minim veniam, .", sellerName: "Matheew", price: 100)
        
        cards.append(contentsOf: [card1,card2,card3])
    }
    
    func getAllCards() -> [Card] {
        return self.cards
    }

    func createCard(image: String, text: String, sellerName: String, price: Int) -> Card {
        return Card(image: image, text: text, sellerName: sellerName, price: price)
    }
}

