////
////  CommunityView.swift
////  Sneakult
////
////  Created by STUDENT on 23/04/24.
////
//
//import SwiftUI
//
//struct CommunityView: View{
//    
////    @State private var allPosts = PostDataModel().getAllPosts()
//    @State private var SearchTitle: String = ""
//    @State private var isEditing = false
//    var posts = PostDataModel().getAllPosts()
//    let posttCount : Int = PostDataModel().getAllPosts().count
//    
//    var body: some View{
//        NavigationStack{
//            ScrollView(showsIndicators: false){
//                LazyVStack{
//                    ForEach(0..<posttCount, id: \.self){ index in CommunityUIViewCell(postview: posts[index])
//                    }
//                    
////
//                }
//            }
//            .navigationTitle("Community")
////            .navigationBarItems(trailing: CommunityProfileView())
//            .searchable(text: $SearchTitle)
////         .navigationBarTitleDisplayMode(.inline)
//            .toolbar{
//                ToolbarItem(placement: .navigationBarTrailing){
//                    Button(action: {
//                        isEditing.toggle()
//                    }){
//                        Image(systemName: "plus.circle")
//                            .font(.title3)
//                            .fontWeight(.semibold)
//                        
//                    }
//                   
////                    Button("Edit") {
////                        isEditing.toggle() // Toggle the state variable to show/hide the edit view
////                    }
//                }
//                
//                
//            }
//            
//        }
//        .sheet(isPresented: $isEditing) { // Present modally when isEditing is true
//            CommunityAddPostView() // Replace EditView with your actual edit view
//        }
//     
//        
//        
//    }
//}
//
//#Preview {
//    CommunityView()
//}


import UIKit
import SwiftUI

struct CommunityView: View {
    @State private var searchTitle: String = ""
    @State private var isEditing = false
    @ObservedObject private var postDataModel = PostDataModel() // Use observed object
    
    var filteredPosts: [Post] {
        if searchTitle.isEmpty {
            return postDataModel.posts
        } else {
            return postDataModel.posts.filter { $0.caption.localizedCaseInsensitiveContains(searchTitle) }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(filteredPosts.indices, id: \.self) { index in
                        CommunityUIViewCell(postview: filteredPosts[index])
                    }
                }
            }
            .navigationTitle("Community")
            .searchable(text: $searchTitle)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isEditing.toggle()
                    }) {
                        Image(systemName: "plus.circle")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                }
            }
            .sheet(isPresented: $isEditing, onDismiss: loadData) {
                CommunityAddPostView(onPost: { newPost in
                    postDataModel.addPost(newPost)
                }, posts: $postDataModel.posts, postDataModel: postDataModel)
            }

        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        // Fetch initial posts (if needed)
        //postDataModel.posts = PostDataModel().getAllPosts()
    }
}

