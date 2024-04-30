//
//  BidsCard.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct BidsCard {
    var image: [Sneaker]
    var seller: String
    var time: Date
    
    init(image: [Sneaker], seller: String, time: Date) {
        self.image = image
        self.seller = seller
        self.time = time
    }
}
class BidCardDataModel {
    var bidcard : [BidsCard] = []
    init(){
        let sneaker1 = Sneaker(productId: UUID(), productName: "Nike Air Force 1", brand: "Nike", category: "Sneakers", size: "US 10", color: "White", isBoxAvailable: true)
        let sneaker2 = Sneaker(productId: UUID(), productName: "Adidas Stan Smith", brand: "Adidas", category: "Sneakers", size: "US 9", color: "Green", isBoxAvailable: false)
        let sneaker3 = Sneaker(productId: UUID(), productName: "Jordan 1 Retro High", brand: "Jordan", category: "Sneakers", size: "US 11", color: "Black/Red", isBoxAvailable: true)
        
        let image1 = [sneaker1, sneaker2]
        let image2 = [sneaker3]
        
        let bidsCard1 = BidsCard(image: image1, seller: "Seller1", time: Date())
        let bidsCard2 = BidsCard(image: image2, seller: "Seller2", time: Date())
        
        bidcard.append(contentsOf: [bidsCard1,bidsCard2])
        
    }
    
}


func createBidsCard(image: [Sneaker], seller: String, time: Date) -> BidsCard {
    return BidsCard(image: image, seller: seller, time: time)
}


