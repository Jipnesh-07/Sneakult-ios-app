//
//  Post.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct Post {
    var user: [User]
    var time: Date
    var image: [String]
    var caption: String
    var likes: Int
    var share: URL
    
    
    init(user: [User], time: Date, image: [String], caption: String, likes: Int, share: URL) {
        self.user = user
        self.time = time
        self.image = image
        self.caption = caption
        self.likes = likes
        self.share = share
       
    }
    
    
    static func addPost(user: User, time: Date, image: [String], caption: String, share: URL) -> Post {
        return Post(user: [user], time: time, image: image, caption: caption, likes: 0, share: share)
    }
    
    
    mutating func updateLikes(newLikes: Int) {
        likes = newLikes
    }
}



class PostDataModel{
    var post : [Post] = []
    init(){
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", image: "image1", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], payments: [])
        
        let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", image: "image1", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], payments: [])
        
        let user3 = User(name: "Bob Johnson", id: UUID(), email: "bob@example.com", image: "image1", isEmailVerified: true, location: "Chicago", createdAt: Date(), userName: "bobby", listings: [], posts: [], reviews: [], followers: [], following: [], payments: [])
        
       
        let post1 = Post(user: [user1], time: Date(), image: ["image1.jpg"], caption: "A wonderful day!", likes: 10, share: URL(string: "https://example.com/post1")!)
        
        let post2 = Post(user: [user2], time: Date(), image: ["image2.jpg", "image3.jpg"], caption: "Having fun!", likes: 20, share: URL(string: "https://example.com/post2")!)
        
        let post3 = Post(user: [user3], time: Date(), image: ["image4.jpg"], caption: "Enjoying the view.", likes: 15, share: URL(string: "https://example.com/post3")!)
        
        post.append(contentsOf: [post1,post2,post3])
    }
}


