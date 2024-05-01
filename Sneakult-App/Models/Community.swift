import Foundation

struct Community {
    var users: [User]
    var isFollowing: Bool
    
    init(users: [User], isFollowing: Bool) {
        self.users = users
        self.isFollowing = isFollowing
    }
    
    
    mutating func addUser(_ user: User) {
        users.append(user)
    }
    
    
    mutating func removeUser(_ user: User) {
        if let index = users.firstIndex(where: { $0.getUserId() == user.getUserId() }) {
            users.remove(at: index)
        }
    }
}



class Commmunity{
    var community : [Community] = []
    init(){
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", image: "image1", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], payments: [])
        
        let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", image: "image1", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], payments: [])
        
        let user3 = User(name: "Bob Johnson", id: UUID(), email: "bob@example.com", image: "image1", isEmailVerified: true, location: "Chicago", createdAt: Date(), userName: "bobby", listings: [], posts: [], reviews: [], followers: [], following: [],  payments: [])
        
        let community1 = Community(users: [user1], isFollowing: false)
        let community2 = Community(users: [user2], isFollowing: true)
        let community3 = Community(users: [user3], isFollowing: false)
        
        community.append(contentsOf: [community1,community2,community3])
    }
    
}


