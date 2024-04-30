//
//  Orders.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct Orders {
    var sneakers : [Sneaker]
    var status : Bool
    var payments : [Payments]
    
    init(sneakers: [Sneaker], status: Bool, payments: [Payments]) {
        self.sneakers = sneakers
        self.status = status
        self.payments = payments
    }
}

class OrdersDataModel{
    var orders: [Orders] = []
    init(){
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        
        let sneakers1 = [
                Sneaker(productId: UUID(), productName: "Nike Air Force 1", brand: "Nike", category: "Sneakers", size: "US 10", color: "White", isBoxAvailable: true),
                Sneaker(productId: UUID(), productName: "Adidas Stan Smith", brand: "Adidas", category: "Sneakers", size: "US 9", color: "Green", isBoxAvailable: false)
            ]
        
            let sneakers2 = [
                Sneaker(productId: UUID(), productName: "Jordan 1 Retro High", brand: "Jordan", category: "Sneakers", size: "US 11", color: "Black/Red", isBoxAvailable: true)
            ]
        
            let payments1 = [
                Payments(cardNo: 123456789, mmyy: 1206, cvv: 456, userid:user1, country: "India", Address: "123St, St", city: "Ludhiana", state: "Punjab", postalCode: 140401)
            ]
        
            let payments2 = [
                Payments(cardNo: 126467710, mmyy: 1205, cvv: 154, userid: user2, country: "India", Address: "456St", city: "Rajpura", state: "Punjab", postalCode: 167829)
            ]
        
            let order1 = Orders(sneakers: sneakers1, status: true, payments: payments1)
            let order2 = Orders(sneakers: sneakers2, status: false, payments: payments2)
    }
}

func addOrder(sneakers: [Sneaker], status: Bool, payments: [Payments]) -> Orders {
    return Orders(sneakers: sneakers, status: status, payments: payments)
}

func updateOrderStatus(order: inout Orders, newStatus: Bool) {
    order.status = newStatus
}

//func sampleOrders() -> [Orders] {
//    let sneakers1 = [
//        Sneaker(productId: UUID(), productName: "Nike Air Force 1", brand: "Nike", category: "Sneakers", size: "US 10", color: "White", isBoxAvailable: true),
//        Sneaker(productId: UUID(), productName: "Adidas Stan Smith", brand: "Adidas", category: "Sneakers", size: "US 9", color: "Green", isBoxAvailable: false)
//    ]
//
//    let sneakers2 = [
//        Sneaker(productId: UUID(), productName: "Jordan 1 Retro High", brand: "Jordan", category: "Sneakers", size: "US 11", color: "Black/Red", isBoxAvailable: true)
//    ]
//
//    let payments1 = [
//        Payments(paymentId: UUID(), amount: 100),
//        Payments(paymentId: UUID(), amount: 150)
//    ]
//
//    let payments2 = [
//        Payments(paymentId: UUID(), amount: 200)
//    ]
//
//    let order1 = Orders(sneakers: sneakers1, status: true, payments: payments1)
//    let order2 = Orders(sneakers: sneakers2, status: false, payments: payments2)
//
//    return [order1, order2]
//}
