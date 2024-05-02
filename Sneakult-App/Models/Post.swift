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
        let post1: Post = Post(userName: "Jatin Bansal", time: "Date()", image: "image1", caption: "These Kicks are Trending😎", likes: 3, share: "")
        
        let post2: Post = Post(userName: "Tanishk sahni", time: "Date()", image: "image2", caption: "I like The ColorScheme😍🌈", likes: 3, share: "")
        
        let post3: Post = Post(userName: "Pratham Mehta", time: "Date()", image: "image3", caption: "🥺", likes: 3, share: "")
        
        let post4: Post = Post(userName: "Udhaw Wadhwan", time: "Date()", image: "image4", caption: "Sample Caption 4", likes: 3, share: "")
        
        let post5: Post = Post(userName: "Isha Yadav", time: "Date()", image: "image5", caption: "Sample Caption 5", likes: 3, share: "")
        
        posts.append(contentsOf: [post1, post2, post3, post4, post5])
    }
    
    func getAllPosts() -> [Post] { self.posts }
}


