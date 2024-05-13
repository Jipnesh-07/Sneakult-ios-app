////
////  Post.swift
////  Sneakult
////
////  Created by student on 26/04/24.
///

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



class PostDataModel: ObservableObject {
    @Published var posts: [Post] = []
    
    init(){
        let post1: Post = Post(userName: "Isha yadav", time: "10h", image: "image8", caption: "These Kicks are Trending😎", likes: 3, share: "")
        
        let post2: Post = Post(userName: "Tanishk sahni", time: "12h", image: "image3", caption: "I like The ColorScheme😍🌈", likes: 3, share: "")
        
        let post3: Post = Post(userName: "Pratham Mehta", time: "12h", image: "C9", caption: "🥺 i Want these also", likes: 3, share: "")
        
        let post4: Post = Post(userName: "Udhaw Wadhwan", time: "13h", image: "image2", caption: "👟😍", likes: 3, share: "")
        
        let post5: Post = Post(userName: "Isha Yadav", time: "1d", image: "image9", caption: "Hi Guys, finnaly i got these", likes: 3, share: "")
        
        posts.append(contentsOf: [post1, post2, post3, post4, post5])
    }
    
    func getAllPosts() -> [Post] {
        // Fetch initial posts
        return posts
    }
    
    func addPost(_ newPost: Post) {
        posts.append(newPost)
    }
}
