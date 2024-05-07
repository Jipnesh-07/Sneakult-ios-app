////
////  SocketNetwork.swift
////  Sneakult-App
////
////  Created by Arun Kudiyal on 02/05/24.
////
//
//import SwiftUI
//import SocketIO
//
//final class SocketNetwork: ObservableObject {
//    private var manager = SocketManager(socketURL: URL(string: "https://bidding-work-5.onrender.com")!, config: [.log(true), .compress])
//
//    @Published var messages: [String] = [String]()
//
//    init() {
//        let socket = manager.defaultSocket
//        socket.on(clientEvent: .connect) { (data, ack) in
//            print("Connected!")
//            socket.emit("Bidding Port", "Amount message from the port")
//        }
//
//        socket.on("messages") { [weak self] (data, ack) in
//            if let data = data[0] as? [String: String],
//               let rawMessage = data["messages"] {
//                DispatchQueue.main.async {
//                    self?.messages.append(rawMessage)
//                }
//            }
//        }
//
//        socket.connect()
//    }
//}
//
//struct SocketView: View {
//    @ObservedObject var service = SocketNetwork()
//
//    var body: some View {
//        VStack {
//            Text("Received messages from Bidder : ")
//                .font(.largeTitle)
//            ForEach(service.messages, id: \.self) { message in
//                Text(message).padding()
//            }
//        }
//    }
//}
//
//#Preview {
//    SocketView()
//}




//
//  SocketNetwork.swift
//  Sneakult-App
//
//  Created by Arun Kudiyal on 02/05/24.
//

import SwiftUI
import SocketIO

struct Message: Codable {
    let _id: String
    let __v: String
    let createdAt: String
    let room: String
    let text: String
    let user: String
}

final class SocketNetworkManager: ObservableObject {
    private var manager = SocketManager(socketURL: URL(string: "https://bidding-work-5.onrender.com/")!, config: [.log(true), .compress])
    
    @Published var messages: [MessageModel] = [MessageModel]()
    @Published var rooms: [String] = [String]()
    @Published var roomCount: Int = 0
    
    init() {
        let socket = manager.defaultSocket
        
        
        socket.connect()
        
        socket.on("updateRooms") { data, ack in
            /* for object in data {
             self.messages = (object as AnyObject).text
             } */
            print("UPDATE DATA FLOW START")
            print(data.count)
            print(data[0])
            var array = data[0] as? NSArray
            
            for item in array! {
                let strItem = item as? String
                self.rooms.append(strItem!)
                self.roomCount += 1
            }
            print(self.rooms)
            print("UPDATE DATA FLOW END")
        }
        
        socket.on(clientEvent: .connect) { (data, ack) in
            print("Connected!")
            socket.emit("joinRoom", "New Room")
            socket.on("message") { data, ack in
                for item in data {
                    print(item)
                }
                print("MESSAGES DATA FLOW START")
                let msg = data[0]
                if let msgRef = msg as? NSObject {
                    let msgPrice = msgRef.value(forKey: "text")! as? String
                    let msgSender = msgRef.value(forKey: "user")! as? String
                    if (msgPrice != nil), (msgSender != nil) {
                        let firstMsg = MessageModel(id:UUID(), text: msgPrice!, user: msgSender!)
                        self.messages.append(firstMsg)
                    }
                    print(self.messages)
                } else { print("Cannot parse data") }
        
                print("MESSAGES DATA FLOW END")
            }
        }
        
        print(messages)
    }
    
    func getAllRooms() -> [String] { return self.rooms }
}

var newSocket = SocketNetworkManager()

struct SocketView: View {
    @ObservedObject var service = SocketNetworkManager()
    
    var body: some View {
        VStack {
            Text("Received messages from Bidder : ")
                .font(.largeTitle)
            ForEach(service.messages, id: \.self.id) { message in
                Text("Hello")
            }
        }
    }
}

#Preview {
    SocketView()
}
