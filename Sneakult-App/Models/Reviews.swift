//
//  Reviews.swift
//  Sneakult
//
//  Created by student on 26/04/24.
//

import Foundation

struct Reviews{
    var user : User
    var reviewId : UUID
    var time : Date
    var stars : Int
    
    init(user: User, reviewId: UUID, time: Date, stars: Int) {
        self.user = user
        self.reviewId = reviewId
        self.time = time
        self.stars = stars
    }
}


class ReviewsDataModel{
    var reviews : [Reviews] = []
    init(){
        let user1 = User(name: "John Doe", id: UUID(), email: "john@example.com", isEmailVerified: true, location: "New York", createdAt: Date(), userName: "johndoe", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
            let user2 = User(name: "Alice Smith", id: UUID(), email: "alice@example.com", isEmailVerified: true, location: "Los Angeles", createdAt: Date(), userName: "alice_smith", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
            let user3 = User(name: "Bob Johnson", id: UUID(), email: "bob@example.com", isEmailVerified: true, location: "Chicago", createdAt: Date(), userName: "bobby", listings: [], posts: [], reviews: [], followers: [], following: [], orders: [], bids: [], payments: [])
        
            let review1 = Reviews(user: user1, reviewId: UUID(), time: Date(), stars: 4)
            let review2 = Reviews(user: user2, reviewId: UUID(), time: Date(), stars: 5)
            let review3 = Reviews(user: user3, reviewId: UUID(), time: Date(), stars: 3)
        
        reviews.append(contentsOf: [review1,review2,review3])
    }
}

func addReview(user: User, time: Date, stars: Int) -> Reviews {
    let reviewId = UUID()
    return Reviews(user: user, reviewId: reviewId, time: time, stars: stars)
}

func updateReviewStars(review: inout Reviews, newStars: Int) {
    review.stars = newStars
}



