//
//  Listings.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct Listings {
    var images: [String]
    var name: String
    var price: Int
    
    init(images: [String], name: String, price: Int) {
        self.images = images
        self.name = name
        self.price = price
    }
    

    

    static func sampleListings() -> [Listings] {
        let listing1 = Listings(images: ["image1.jpg", "image2.jpg", "image3.jpg"], name: "Product 1", price: 50)
        
        let listing2 = Listings(images: ["image4.jpg", "image5.jpg", "image6.jpg"], name: "Product 2", price: 80)
        
        let listing3 = Listings(images: ["image7.jpg", "image8.jpg", "image9.jpg"], name: "Product 3", price: 120)
//        let list4 = Listings(images:["image5.jpg","image"])
        
        return [listing1, listing2, listing3]
    }
    
    mutating func addImage(_ image: String) {
        images.append(image)
    }
    

    mutating func removeImage(at index: Int) {
        guard index >= 0, index < images.count else {
            return
        }
        images.remove(at: index)
    }
    
}
