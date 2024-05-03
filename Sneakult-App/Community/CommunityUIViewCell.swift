import SwiftUI

struct CommunityUIViewCell: View {
    
//    @State private var post: Post?
    @State private var isLiked: Bool = false
    var postview: Post

    var body: some View {
        VStack {
      
                HStack(alignment: .top, spacing: 12) {
                    Image(postview.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            NavigationLink(destination: CommunityProfileView()) {
                                Text(postview.userName)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            Spacer()
                            Text(postview.time)
                                .font(.caption)
                                .foregroundColor(Color(.systemGray3))
                            Button(action: {
                                // Action for ellipsis button
                            }) {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(Color(.darkGray))
                            }
                        }
                        Text(postview.caption)
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(Color(.secondaryLabel))
                            .multilineTextAlignment(.leading)
                        
                        Image(postview.image)
                            .resizable()
//                            .scaledToFit()
                            .frame(width: 250, height: 200)
                            .clipShape(Rectangle())
                            .cornerRadius(9.0)
                        
                        HStack(spacing: 16) {
                            Button(action: {
                                // Toggle the liked state
                                isLiked.toggle()
                            }) {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                                    .foregroundColor(isLiked ? Color.red : Color.black)
                            }
                            Button(action: {
                                // Action for comment button
                            }) {
                                Image(systemName: "bubble.right")
                            }
                            Button(action: {
                                // Action for share button
                            }) {
                                Image(systemName: "paperplane")
                            }
                        }
                        .foregroundColor(.black)
                        .padding(.vertical, 8)
                    }
                }
                .padding()
                Divider()
            
        }
//        .onAppear {
//            let postDataModel = PostDataModel()
//            let allPosts = postDataModel.getAllPosts()
//            self.post = allPosts.randomElement()
//        }
    }
}

#if DEBUG
struct CommunityUIViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CommunityUIViewCell(postview: PostDataModel().getAllPosts()[0])
    }
}
#endif
