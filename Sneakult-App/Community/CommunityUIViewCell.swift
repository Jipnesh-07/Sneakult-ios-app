import SwiftUI

struct CommunityUIViewCell: View {
    
    @State private var post: Post?
    
    var body: some View {
        VStack {
            if let post = post {
                HStack(alignment: .top, spacing: 12) {
                    Image(post.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            NavigationLink(destination: CommunityProfileView()) {
                                Text(post.userName)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            Spacer()
                            Text(post.time)
                                .font(.caption)
                                .foregroundColor(Color(.systemGray3))
                            Button(action: {
                                // Action for ellipsis button
                            }) {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(Color(.darkGray))
                            }
                        }
                        Text(post.caption)
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(Color(.secondaryLabel))
                            .multilineTextAlignment(.leading)
                        
                        Image(post.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 200)
                            .clipShape(Rectangle())
                            .cornerRadius(9.0)
                        
                        HStack(spacing: 16) {
                            Button(action: {
                                // Toggle the liked state
                            }) {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(Color.red)
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
        }
        .onAppear {
            let postDataModel = PostDataModel()
            let allPosts = postDataModel.getAllPosts()
            self.post = allPosts.randomElement()
        }
    }
}

#if DEBUG
struct CommunityUIViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CommunityUIViewCell()
    }
}
#endif
