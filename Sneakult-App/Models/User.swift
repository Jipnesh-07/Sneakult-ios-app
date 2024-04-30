import Foundation

struct User {
    private var id: UUID
    private var name: String
    private var email: String
    private var isEmailVerified: Bool
    private var location: String
    private var createdAt: Date
    private var userName: String
    private var listings: [Listings]
    private var posts: [Post]
    private var reviews: [Reviews]
    private var followers: [User]
    private var following: [User]
    private var orders: [Orders]
    private var bids: [Bid]
    private var payments: [Payments]
    
    init(name: String, id: UUID, email: String, isEmailVerified: Bool, location: String, createdAt: Date, userName: String, listings: [Listings], posts: [Post], reviews: [Reviews], followers: [User], following: [User], orders: [Orders], bids: [Bid], payments: [Payments]) {
        self.name = name
        self.id = id
        self.email = email
        self.isEmailVerified = isEmailVerified
        self.location = location
        self.createdAt = createdAt
        self.userName = userName
        self.listings = listings
        self.posts = posts
        self.reviews = reviews
        self.followers = followers
        self.following = following
        self.orders = orders
        self.bids = bids
        self.payments = payments
    }
    
    func getUserId() -> UUID {
        return self.id
    }
}

class UserDataModel {
    var users: [User] = []
    
    init() {
      
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        let user3 = User(name: "Bob Johnson", id: UUID(), email: "bob@example.com", isEmailVerified: true, location: "Chicago", createdAt: Date(), userName: "bobby", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
        users.append(contentsOf: [user1, user2, user3])
    }
    
   
    func addUser(_ user: User) {
        users.append(user)
    }
    

    func removeUser(at index: Int) {
        guard index >= 0, index < users.count else {
            return
        }
        users.remove(at: index)
    }

    

}
