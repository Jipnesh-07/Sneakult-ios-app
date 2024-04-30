//
//  CommunityUIViewCell.swift
//  Sneakult
//
//  Created by STUDENT on 23/04/24.
//

import SwiftUI

struct CommunityUIViewCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 12){
                Image("image1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack{
                        NavigationLink(destination: CommunityProfileView()) {
                            Text("Steve Jobs")
                                .font(.title3)
                                .fontWeight(.semibold)
                        }.buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                        
                    }
                    Text("Checkout my new Kicks!👟😎")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(Color(.secondaryLabel))
                        .multilineTextAlignment(.leading)
                    
                    
                    HStack(alignment: .center){
                        Image("image1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250,height: 250)
                            .clipShape(Rectangle())
                            .cornerRadius(9.0)
                    }
                    
                    HStack(spacing: 16){
                        Button{
                            
                        }label: {
                            Image(systemName: "heart")
                            
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "bubble.right")
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    
//                    Hstack2
                    
                }
            }
            Divider()
        }
        .padding()
        //        vstack ends
    }
}

#Preview {
    CommunityUIViewCell()
}
