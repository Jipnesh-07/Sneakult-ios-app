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
    var price: Int
    
    init(image: String, text: String, price: Int) {
        self.image = image
        self.text = text
        self.price = price
    }
}

class CardDataModel {
    var cards : [Card] = []
    init () {
        let card1 = Card(image: "image1.jpg", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", price: 50)
        let card2 = Card(image: "image2.jpg", text: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 75)
        let card3 = Card(image: "image3.jpg", text: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 100)
        
        cards.append(contentsOf: [card1,card2,card3])
    }
}

func createCard(image: String, text: String, price: Int) -> Card {
    return Card(image: image, text: text, price: price)
}


