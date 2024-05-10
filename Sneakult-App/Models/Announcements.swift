//
//  Announcements.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import Foundation

struct Announcements {
    var image: String
    var text: String
    var secondaryText: String
    
    init(image: String, text: String, secondaryText : String) {
        self.image = image
        self.text = text
        self.secondaryText = secondaryText
        
    }
}

class AnnouncementsDataModel {
    var announcements : [Announcements] = []
    init () {
        let annoucement1 = Announcements(image: "Shoe2", text: "New Drop Alert!", secondaryText: "Travis Scott s3")
        let annoucement2 = Announcements(image: "person1", text: "Community Challenge", secondaryText: "Onboard 3000 new users")
        let annoucement3 = Announcements(image: "Shoe8", text: "Highest Bid Ever!", secondaryText: "₹809990")
        let annoucement4 = Announcements(image: "Shoe7", text: "Restock Now Live!", secondaryText: "Adidas Sports edition")
        announcements.append(contentsOf: [annoucement1,annoucement2,annoucement3,annoucement4])
    }
    func getAllAnnouncements() -> [Announcements] {
        return self.announcements
    }
    
    func CreateAnnouncments(image: String, text: String, secondaryText: String) -> Announcements {
        return Announcements(image: image, text: text, secondaryText: secondaryText)
    }
}



