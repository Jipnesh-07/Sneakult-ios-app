//
//  Bid.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//


import Foundation

struct Bid {
    var sneaker: [Sneaker]
    var user: [User]
    var price: Int
    
    init(sneaker: [Sneaker], user: [User], price: Int) {
        self.sneaker = sneaker
        self.user = user
        self.price = price
    }
}


class Bidding {
    var bid : [Bid] = []
    init() {
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let user3 = User(name: "Bob Johnson", id: UUID(), email: "bob@example.com", isEmailVerified: true, location: "Chicago", createdAt: Date(), userName: "bobby", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let sneaker1 = Sneaker(productId: UUID(), productName: "Nike Air Force 1", brand: "Nike", category: "Sneakers", size: "US 10", color: "White", isBoxAvailable: true)
        let sneaker2 = Sneaker(productId: UUID(), productName: "Adidas Stan Smith", brand: "Adidas", category: "Sneakers", size: "US 9", color: "Green", isBoxAvailable: false)
        let sneaker3 = Sneaker(productId: UUID(), productName: "Jordan 1 Retro High", brand: "Jordan", category: "Sneakers", size: "US 11", color: "Black/Red", isBoxAvailable: true)
        
        let bid1 = Bid(sneaker: [sneaker1], user: [user1], price: 100)
        let bid2 = Bid(sneaker: [sneaker2], user: [user2], price: 80)
        let bid3 = Bid(sneaker: [sneaker3], user: [user3], price: 120)
        
        bid.append(contentsOf: [bid1,bid2,bid3])
    }
}


func createBid(sneaker: [Sneaker], user: [User], price: Int) -> Bid {
    return Bid(sneaker: sneaker, user: user, price: price)
}
