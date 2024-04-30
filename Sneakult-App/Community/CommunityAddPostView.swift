//
//  CommunityAddPostView.swift
//  Sneakult
//
//  Created by STUDENT on 24/04/24.
//

import SwiftUI

struct CommunityAddPostView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack{
                HStack(alignment: .top){
                    Image("image1")
                        .resizable()
                        .frame(width:40, height: 40)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading,spacing: 4){
                        Text("Steve Jobs")
                            .fontWeight(.semibold)
                        
                        TextField("Start a Post", text: $caption, axis: .vertical)
                            
                            
                    }
                    .font(.footnote)
                    Spacer()
                    
                    if !caption.isEmpty{
                        Button{
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Post")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    CommunityAddPostView()
}
