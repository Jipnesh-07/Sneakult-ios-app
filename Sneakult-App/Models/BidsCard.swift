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
    var time: String
    
    init(image: String, title: String, seller: String, currentBid: String, time: String) {
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
        
       
        let bidsCard1 = BidsCard(image: "Bidimg1", title: "Nike Dunk Low", seller: "Selena", currentBid: "₹12000", time: "23:48")
        let bidsCard2 = BidsCard(image: "Bidimg2", title: "Nike Cortez", seller: "Rajesh", currentBid: "₹809990", time: "16:45")
        let bidsCard3 = BidsCard(image: "Bidimg3", title: "Nike Vaporfly 3", seller: "Rajesh", currentBid: "₹309879", time: "16:45")
        let bidsCard4 = BidsCard(image: "Bidimg4", title: "Nike ", seller: "Rajesh", currentBid: "₹765491", time: "16:45")
        let bidsCard5 = BidsCard(image: "Bidimg5", title: "Nike Zoom Vimereo 5", seller: "Rajesh", currentBid: "₹765491", time: "16:45")
        let bidsCard6 = BidsCard(image: "Bidimg6", title: "Nike Zoom Vimereo 5", seller: "Rajesh", currentBid: "₹765491", time: "16:45")
    
        bidcard.append(contentsOf: [bidsCard1,bidsCard2,bidsCard3,bidsCard4,bidsCard5,bidsCard6])
        
    }
    
    func getAllBidCards() -> [BidsCard] {
        return self.bidcard
    }
    func createBidsCard(image: String, title: String, seller: String, currentBid: String, time: String) -> BidsCard {
        return BidsCard(image: image, title: title, seller: seller, currentBid: currentBid, time: time)
    }

}




