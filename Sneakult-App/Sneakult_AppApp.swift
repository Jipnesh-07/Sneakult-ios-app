//
//  Sneakult_AppApp.swift
//  Sneakult-App
//
//  Created by STUDENT on 30/04/24.
//

import SwiftUI

@main
struct Sneakult_AppApp: App {
    var newSocket = SocketNetwork()

    var body: some Scene {
        WindowGroup {
            MainContentView()
        }
    }
}
