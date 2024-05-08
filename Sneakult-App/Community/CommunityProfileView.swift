//
//  CommunityProfileView.swift
//  Sneakult
//
//  Created by STUDENT on 24/04/24.
//

import SwiftUI

struct CommunityProfileView: View {
    
//    @State var posts = PostDataModel().getAllPosts()
    @State private var selectedFilter: CommunityProfileFilter = .posts
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    @Namespace var animation
    @State private var isEditing = false // Add a state variable to track if edit view is presented
    
    var posts : Post
    private var filterBarWidth: CGFloat {
        let count = CGFloat(CommunityProfileFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    HStack(alignment:.top) {
                        VStack(alignment: .leading, spacing: 12 ) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(posts.userName)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
//                                Text("JobvalaSteve")
//                                    .font(.subheadline )
                                //                        2nd vstack
                            }
                            Text(posts.caption)
                                .font(.footnote)
                            
                            Text("2k followers")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            //    1st vStack
                        }
                        //               1st Hstack
                        Spacer()
                        Image(posts.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                    Button("Follow") {
                        // Add action for follow button
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 32)
                    .background(.black)
                    .cornerRadius(8)
                    
                    // Your existing code...
                    
                    // Filter bar
                    VStack {
                        HStack {
                            ForEach(CommunityProfileFilter.allCases) { filter in
                                VStack {
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                    if selectedFilter == filter {
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(width: 180, height: 1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                        
                                    } else {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 180, height: 1)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selectedFilter = filter
                                    }
                                }
                            }
                        }
                        
                        // User content list view
                        LazyVStack {
                            ForEach(0...3, id: \.self) {_ in
                                CommunityUIViewCell2()
                            }
                        }
                    }
                    .padding(.vertical, 8)
//                    .padding(.top,-20)
                }
            }
            .padding(.horizontal)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    // "Edit" Button
//                    Button("Edit") {
//                        isEditing.toggle() // Toggle the state variable to show/hide the edit view
//                    }
//                    .font(.headline)
//                    .foregroundColor(.accent)
////                    .padding(.top,-20)
//                }
//            }
        }
//        .sheet(isPresented: $isEditing) { // Present modally when isEditing is true
//            CommunityProfileEditView() // Replace EditView with your actual edit view
//        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Add Preview if you want


#Preview {
    CommunityProfileView(posts: PostDataModel().getAllPosts()[0])
}
