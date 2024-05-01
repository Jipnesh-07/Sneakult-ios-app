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
        let annoucement1 = Announcements(image: "Shoe2", text: "Highest Bid Happened", secondaryText: "₹809990")
        let annoucement2 = Announcements(image: "Shoe7", text: "New Users Onboarded", secondaryText: "6000")
        
        announcements.append(contentsOf: [annoucement1,annoucement2])
    }
}

func CreateAnnouncments(image: String, text: String, secondaryText: String) -> Announcements {
    return Announcements(image: image, text: text, secondaryText: secondaryText)
}
