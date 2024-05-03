//
//  SocketNetwork.swift
//  Sneakult-App
//
//  Created by Arun Kudiyal on 02/05/24.
//

import SwiftUI
import SocketIO

final class SocketNetwork: ObservableObject {
    private var manager = SocketManager(socketURL: URL(string: "https://bidding-work-5.onrender.com")!, config: [.log(true), .compress])
    
    @Published var messages: [String] = [String]()
    
    init() {
        let socket = manager.defaultSocket
        socket.on(clientEvent: .connect) { (data, ack) in
            print("Connected!")
            socket.emit("Bidding Port", "Amount message from the port")
        }
        
        socket.on("messages") { [weak self] (data, ack) in
            if let data = data[0] as? [String: String],
               let rawMessage = data["messages"] {
                DispatchQueue.main.async {
                    self?.messages.append(rawMessage)
                }
            }
        }
        
        socket.connect()
    }
}

struct SocketView: View {
    @ObservedObject var service = SocketNetwork()
    
    var body: some View {
        VStack {
            Text("Received messages from Bidder : ")
                .font(.largeTitle)
            ForEach(service.messages, id: \.self) { message in
                Text(message).padding()
            }
        }
    }
}

#Preview {
    SocketView()
}
