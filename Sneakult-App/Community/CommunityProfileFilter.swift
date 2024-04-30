//
//  CommunityProfileFilter.swift
//  Sneakult
//
//  Created by STUDENT on 24/04/24.
//

import Foundation

enum CommunityProfileFilter: Int, CaseIterable, Identifiable{
    case posts
    case comments
   
    
    var title: String{

        switch self{
        case .posts: return "Posts"
        case .comments: return "Comments"
       
        }
    }
    var id: Int{
        return self.rawValue
    }
}
