

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
    @Published var currentBid: String = "" // Track the current bid
    
    let socket: SocketIOClient
    
    init() {
        socket = manager.defaultSocket
        
        socket.connect()
        
        socket.on("updateRooms") { data, ack in
            if let array = data.first as? [String] {
                DispatchQueue.main.async {
                    self.rooms = array
                    self.roomCount = array.count
                }
            }
        }
        
        socket.on(clientEvent: .connect) { (data, ack) in
            print("Connected!")
            self.socket.emit("joinRoom", "New Room")
            self.socket.on("message") { data, ack in
                for item in data {
                    print(item)
                }
                print("MESSAGES DATA FLOW START")
                let msg = data[0]
                if let msgRef = msg as? NSObject {
                    let msgPrice = msgRef.value(forKey: "text")! as? String
                    let msgSender = msgRef.value(forKey: "user")! as? String
                    if let bidPrice = msgPrice, let bidder = msgSender {
                        DispatchQueue.main.async {
                            let newBid = MessageModel(id: UUID(), text: bidPrice, user: bidder)
                            self.messages.append(newBid)
                            self.updateCurrentBid() // Update the current bid
                        }
                    }
                } else { print("Cannot parse data") }
                
                print("MESSAGES DATA FLOW END")
            }
        }
    }
    
    // Function to update the current bid
    private func updateCurrentBid() {
        if let highestBid = messages.last?.text {
            self.currentBid = highestBid
        }
    }
    
    func getAllRooms() -> [String] { return self.rooms }
    
    func makeBid(bidAmount: String) {
        // Connect to the socket if not already connected
        if !self.socket.status.active {
            socket.connect()
        }
        
        // Wait for the socket to connect before sending the message
        self.socket.on("connect") { _, _ in
            let user = "John" // Assuming this is the user's name
            
            let message = ["user": user, "text": bidAmount]
            print(message)
            self.socket.emit("sendMessage", with: [message]) {
                print("Message sent") // Add your completion logic here if needed
            }
        }
    }
}

struct SocketView: View {
    @ObservedObject var service = SocketNetworkManager()
    
    var body: some View {
        VStack {
            Text("Received messages from Bidder : ")
                .font(.largeTitle)
            ForEach(service.messages, id: \.self.id) { message in
                Text("\(message.user): \(message.text)")
            }
            Text("Current Bid: \(service.currentBid)") // Display the current bid
        }
    }
}

struct ContentView: View {
    @StateObject var socketManager = SocketNetworkManager()
    @State private var bidAmount: String = ""
    
    var body: some View {
        VStack {
            SocketView(service: socketManager)
            
            TextField("Enter Bid Amount", text: $bidAmount)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                socketManager.makeBid(bidAmount: bidAmount)
            }, label: {
                Text("Place Bid")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
