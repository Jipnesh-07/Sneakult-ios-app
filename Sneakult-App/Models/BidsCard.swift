//
//  BidsCard.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct BidsCard {
    var image: String
    var title: String
    var seller: String
    var currentBid: String
    var time: Date
    
    init(image: String, title: String, seller: String, currentBid: String, time: Date) {
        self.image = image
        self.title = title
        self.seller = seller
        self.currentBid = currentBid
        self.time = time
    }
}
class BidCardDataModel {
    var bidcard : [BidsCard] = []
    init(){
        
       
        let bidsCard1 = BidsCard(image: "image1", title: "Nike Dunk Low", seller: "Selena", currentBid: "₹12000", time: Date.now)
        let bidsCard2 = BidsCard(image: "image1", title: "Nike Dunk High", seller: "Rajesh", currentBid: "₹34000", time: Date.now)
        
        bidcard.append(contentsOf: [bidsCard1,bidsCard2])
        
    }
    
}


func createBidsCard(image: String, title: String, seller: String, currentBid: String, time: Date) -> BidsCard {
    return BidsCard(image: image, title: title, seller: seller, currentBid: currentBid, time: time)
}


