//
//  MessageModel.swift
//  Sneakult-App
//
//  Created by STUDENT on 07/05/24.
//

import SwiftUI

struct MessageModel: Codable, Identifiable {
    var id: UUID
    var text: String
    var user: String
}
