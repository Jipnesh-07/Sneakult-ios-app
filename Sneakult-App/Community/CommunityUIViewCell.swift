

import SwiftUI

struct CommunityUIViewCell: View {
    
    @State private var isLiked: Bool = false
    @State private var numberOfLikes: Int = 0
    @State private var numberOfComments: Int = 0
    @State private var numberOfShares: Int = 0
    
    var postview: Post
    
    var body: some View {
        VStack {
            
            HStack(alignment: .top, spacing: 12) {
                Image(postview.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        NavigationLink(destination: CommunityProfileView(posts: PostDataModel().getAllPosts()[0])) {
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
                        .frame(width: 300, height: 200)
                        .clipShape(Rectangle())
                        .cornerRadius(9.0)
                    
                    HStack(spacing: 16) {
                        Button(action: {
                            // Toggle the liked state
                            isLiked.toggle()
                            // Update number of likes
                            if isLiked {
                                numberOfLikes += 1
                            } else {
                                numberOfLikes -= 1
                            }
                        }) {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                .foregroundColor(isLiked ? Color.red : Color.black)
                        }
                        Text("\(numberOfLikes)")
                        Button(action: {
                            // Action for comment button
                            numberOfComments += 1 // For example, incrementing comments
                        }) {
                            Image(systemName: "bubble.right")
                        }
                        Text("\(numberOfComments)")
                        Button(action: {
                            // Action for share button
                            numberOfShares += 1 // For example, incrementing shares
                        }) {
                            Image(systemName: "paperplane")
                        }
                        Text("\(numberOfShares)")
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
            }
            .padding(.horizontal, 10)
            Divider()
            
        }
    }
}

#if DEBUG
struct CommunityUIViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CommunityUIViewCell(postview: PostDataModel().getAllPosts()[0])
    }
}
#endif
