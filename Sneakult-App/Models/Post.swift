//
//  Post.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct Post {
    var userName: String
    var time: String
    var image: String
    var caption: String
    var likes: Int
    var share: String
    
    
    init(userName: String, time: String, image: String, caption: String, likes: Int, share: String) {
        self.userName = userName
        self.time = time
        self.image = image
        self.caption = caption
        self.likes = likes
        self.share = share
    }
}



class PostDataModel{
    var posts : [Post] = []
    init(){
        let post1: Post = Post(userName: "User One", time: "Date()", image: "image1", caption: "Sample Caption", likes: 3, share: "")
        
        let post2: Post = Post(userName: "User Two", time: "Date()", image: "image2", caption: "Sample Caption 2", likes: 3, share: "")
        
        let post3: Post = Post(userName: "User Three", time: "Date()", image: "image3", caption: "Sample Caption 3", likes: 3, share: "")
        
        let post4: Post = Post(userName: "User Four", time: "Date()", image: "image4", caption: "Sample Caption 4", likes: 3, share: "")
        
        let post5: Post = Post(userName: "User Five", time: "Date()", image: "image5", caption: "Sample Caption 5", likes: 3, share: "")
        
        posts.append(contentsOf: [post1, post2, post3, post4, post5])
    }
    
    func getAllPosts() -> [Post] { self.posts }
}


