//
//  CommunityUIViewCell2.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import SwiftUI

struct CommunityUIViewCell2: View {
    @State private var Postimage: [String] = [ "image1", "image2","image4", "image5"]
    @State private var UserNames: [String] = ["Steve Jobs", "Mathew Wade", "Rajes Khanna", "Raghav Bakhshi"]
    @State private var userImage: [String] = ["image1","image2","image3","image4","image5"]
    @State private var SelectUserName: String = ""
    @State private var SelectUserImage: String = ""
    @State private var SelectPostimage: String = ""
    @State private var isLiked: Bool = false
    @State private var isShareSheetPresented: Bool = false
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 12){
                Image(SelectUserImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack{
                        NavigationLink(destination: CommunityProfileView()) {
                            Text(SelectUserName)
                                .font(.title3)
                                .fontWeight(.semibold)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                        Text("10h")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                        
                    }
                    Text("View These Kicks")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(Color(.secondaryLabel))
                        .multilineTextAlignment(.leading)
                    
                    
                    //                    HStack(alignment: .center){
                    //                        Image(SelectPostimage)
                    //                            .resizable()
                    //                            .scaledToFill()
                    //                            .frame(width: 300,height: 200)
                    //                            .clipShape(Rectangle())
                    //                            .cornerRadius(9.0)
                    //                    }
                    
                    HStack(spacing: 16){
                        Button(action: {
                            // Toggle the liked state
                            isLiked.toggle()
                        }) {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                .foregroundColor(isLiked ? Color.red : Color.black)
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button{
                            // Present the share sheet
                            isShareSheetPresented.toggle()
                        }label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    
                    //                    Hstack2
                    
                }
            }
            .onAppear {
                SelectPostimage = Postimage.randomElement() ?? "defaultShoeImage"
                
                SelectUserName = UserNames.randomElement() ?? "defaultShoeImage"
                
                SelectUserImage = userImage.randomElement() ?? "defaultShoeImage"
                
            }
            Divider()
        }
        .padding()
    }
}

struct ShareSheet: View {
    var body: some View {
        // Add default sharing options here
        Text("Share options")
    }
}
#Preview {
    CommunityUIViewCell2()
}
