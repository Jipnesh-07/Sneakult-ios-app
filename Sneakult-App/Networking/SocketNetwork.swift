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

final class SocketNetwork: ObservableObject {
    private var manager = SocketManager(socketURL: URL(string: "https://bidding-work-5.onrender.com/")!, config: [.log(true), .compress])
  
    @Published var messages: [String] = [String]()
    
    init() {
        let socket = manager.defaultSocket
        
      
        socket.connect()
        socket.on(clientEvent: .connect) { (data, ack) in
            print("Connected!")
            socket.emit("joinRoom", "My Room")
            socket.on("message") { data, ack in
                print(data)
            }
            
            
//            socket.on("joinRoom") {data, ack in
//                socket.emit("sendMessage", "{ \"user\":\"abc\", text: \"hello\" }")
//            }

            
            
            
            //            print(data, ack)
//            socket.emit("Bidding Port", "Amount message from the port")
        }
        //socket.emit("joinRoom", "New Room")
//        socket.on("updateRooms") {data, ack in
//            //            print(data)
//            guard let cur = data[0] as? [String] else { return }
//            print(cur[0])
//            socket.emit("joinRoom", cur[0])
//        }
        
//        socket.on("sendMessage") { data, ack in
//            // Decode data into Message objects
//            print(data[0])
//            guard let msg = data[0] as? Message else { return }
////            if let jsonData = try? JSONSerialization.data(withJSONObject: data[0], options: []),
////               let message = try? JSONDecoder().decode(Message.self, from: jsonData) {
////                self.messages.append(message.text)
////                print(message)
////            }
////            print("NOW")
//            print(msg)
//
//
//        }
        
        print(messages)
    }
}

var newSocket = SocketNetwork()

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
