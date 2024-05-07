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
    var productValue: String
    var time: String
    var size: Int
    var colour: String
    
    
    init(image: String, title: String, seller: String, currentBid: String, productValue: String, time: String, size: Int, colour: String) {
        self.image = image
        self.title = title
        self.seller = seller
        self.currentBid = currentBid
        self.productValue = productValue
        self.time = time
        self.size = size
        self.colour = colour
    }
}

class BidCardDataModel {
    var bidcard : [BidsCard] = []
    init(){
        
        
        let bidsCard1 = BidsCard(image: "Bidimg1", title: "Nike Dunk Low", seller: "Selena", currentBid: "12000", productValue: "8000", time: "23:48:34", size: 7, colour: "Black/Grey")
        let bidsCard2 = BidsCard(image: "Bidimg2", title: "Nike Cortez", seller: "Rajesh", currentBid: "809990", productValue: "7685", time: "16:45:45", size: 8, colour: "Blue")
        let bidsCard3 = BidsCard(image: "Bidimg3", title: "Nike Vaporfly 3", seller: "Rajesh", currentBid: "309879", productValue: "86550", time: "16:45:89", size: 9, colour: "red")
        let bidsCard4 = BidsCard(image: "Bidimg4", title: "Nike ", seller: "Prabhakar", currentBid: "765491", productValue: "876234", time: "16:45:35", size: 6, colour: "Green")
        let bidsCard5 = BidsCard(image: "Bidimg5", title: "Nike Zoom Vimereo 5", seller: "Vishnu Bansal", currentBid: "765491", productValue: "45673", time: "16:45:67", size: 8, colour: "Green")
        let bidsCard6 = BidsCard(image: "Bidimg6", title: "Nike Zoom Vimereo 5", seller: "Udhav Wadhwan", currentBid: "765491", productValue: "74658", time: "16:45:23", size: 9, colour: "Amber")
        let bidsCard7 = BidsCard(image: "Bidimg7", title: "Nike Zoom Vimereo 5", seller: "Udhav Wadhwan", currentBid: "765491", productValue: "74658", time: "16:45:23", size: 9, colour: "Amber")
        let bidsCard8 = BidsCard(image: "Bidimg8", title: "Nike Zoom Vimereo 5", seller: "Udhav Wadhwan", currentBid: "765491", productValue: "74658", time: "16:45:23", size: 9, colour: "Amber")
        let bidsCard9 = BidsCard(image: "Bidimg9", title: "Nike Zoom Vimereo 5", seller: "Udhav Wadhwan", currentBid: "765491", productValue: "74658", time: "16:45:23", size: 9, colour: "Amber")
        let bidsCard10 = BidsCard(image: "Bidimg10", title: "Nike Zoom Vimereo 5", seller: "Udhav Wadhwan", currentBid: "765491", productValue: "74658", time: "16:45:23", size: 9, colour: "Amber")
        let bidsCard11 = BidsCard(image: "Bidimg11", title: "Nike Zoom Vimereo 5", seller: "Udhav Wadhwan", currentBid: "765491", productValue: "74658", time: "16:45:23", size: 9, colour: "Amber")
        let bidsCard12 = BidsCard(image: "Bidimg12", title: "Nike Zoom Vimereo 5", seller: "Udhav Wadhwan", currentBid: "765491", productValue: "74658", time: "16:45:23", size: 9, colour: "Amber")
       
        
        bidcard.append(contentsOf: [bidsCard1,bidsCard2,bidsCard3,bidsCard4,bidsCard5,bidsCard6,bidsCard7,bidsCard8,bidsCard9,bidsCard10,bidsCard11,bidsCard12])
        
    }
    
    func getAllBidCards() -> [BidsCard] {
        return self.bidcard
    }
    func createBidsCard(image: String, title: String, seller: String, currentBid: String, productValue: String, time: String, size: Int, colour: String) -> BidsCard {
        return BidsCard(image: image, title: title, seller: seller, currentBid: currentBid, productValue: productValue, time: time, size: size, colour: colour)
    }
    
}




