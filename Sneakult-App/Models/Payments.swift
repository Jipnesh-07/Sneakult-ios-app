//
//  Payments.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct Payments {
    var cardNo : Int
    var mmyy : Int
    var cvv : Int
    var userid : User
    var country : String
    var Address : String
    var city : String
    var state : String
    var postalCode : Int
    
    
    init(cardNo: Int, mmyy: Int, cvv: Int, userid: User, country: String, Address: String, city: String, state: String, postalCode: Int) {
        self.cardNo = cardNo
        self.mmyy = mmyy
        self.cvv = cvv
        self.userid = userid
        self.country = country
        self.Address = Address
        self.city = city
        self.state = state
        self.postalCode = postalCode
    }
}




class PaymentsDataModel{
    var payments : [Payments] = []
    
    init(){
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let user3 = User(name: "Bob Johnson", id: UUID(), email: "bob@example.com", isEmailVerified: true, location: "Chicago", createdAt: Date(), userName: "bobby", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let payment1 = Payments(cardNo: 123456789, mmyy: 1211, cvv: 123, userid: user1, country: "USA", Address: "123 Main St", city: "New York", state: "NY", postalCode: 10001)
        let payment2 = Payments(cardNo: 987654321, mmyy: 1104, cvv: 456, userid: user2, country: "USA", Address: "456 Elm St", city: "Los Angeles", state: "CA", postalCode: 90001)
        let payment3 = Payments(cardNo: 555555555, mmyy: 1003, cvv: 789, userid: user3, country: "USA", Address: "789 Oak St", city: "Chicago", state: "IL", postalCode: 60001)
        
        payments.append(contentsOf: [payment1,payment2,payment3])
    }
}

func addPayment(cardNo: Int, mmyy: Int, cvv: Int, userId: User, country: String, address: String, city: String, state: String, postalCode: Int) -> Payments {
    return Payments(cardNo: cardNo, mmyy: mmyy, cvv: cvv, userid: userId, country: country, Address: address, city: city, state: state, postalCode: postalCode)
}
