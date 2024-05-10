

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

