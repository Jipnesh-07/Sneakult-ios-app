import Foundation

struct SellerDetails {
    var user: User
    var isFollowed: Bool
    var share: URL
    var ratingStar: Int
    
    init(user: [User], isFollowed: Bool, share: URL, ratingStar: Int) {
        self.user = user[0]
        self.isFollowed = isFollowed
        self.share = share
        self.ratingStar = ratingStar
    }
    

}

class Sellers {
    var sellers : [SellerDetails] = []
    
    init() {
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        let seller1 = SellerDetails(user: [user1], isFollowed: false, share: URL(string: "https://example.com/seller1")!, ratingStar: 4)
        
        let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        let seller2 = SellerDetails(user: [user2], isFollowed: true, share: URL(string: "https://example.com/seller2")!, ratingStar: 5)
        
        let user3 = User(name: "Bob Johnson", id: UUID(), email: "bob@example.com", isEmailVerified: true, location: "Chicago", createdAt: Date(), userName: "bobby", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        let seller3 = SellerDetails(user: [user3], isFollowed: true, share: URL(string: "https://example.com/seller3")!, ratingStar: 3)
        
        sellers.append(contentsOf: [seller1, seller2, seller3])
    }
    
    func getsellers() -> [SellerDetails]{
        return sellers
    }
    
}
