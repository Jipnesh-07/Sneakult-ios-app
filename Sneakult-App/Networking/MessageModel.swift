//
//  MessageModel.swift
//  Sneakult-App
//
//  Created by STUDENT on 07/05/24.
//

import SwiftUI
import SocketIO

struct MessageModel: Codable, Identifiable, SocketData {
    var id: UUID
    var text: String
    var user: String
}
