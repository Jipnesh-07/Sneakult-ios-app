//
//  CommunityProfileEditView.swift
//  Sneakult
//
//  Created by STUDENT on 25/04/24.
//

import SwiftUI

struct CommunityProfileEditView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("John Attari")
                            
                        }
                        Spacer()

                        Image("image1")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    }
                    Divider()
                    VStack(alignment : .leading){
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Enter Your Bio ..", text: $bio, axis: .vertical)
                    }
                    Divider()
                    
                    VStack(alignment : .leading){
                        Text("Link")
                            .fontWeight(.semibold)
                        TextField("Add link", text: $link)
                    }
                    Divider()
                    
                    Toggle("Private Profile", isOn: $isPrivateProfile)
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius:10).stroke(Color(.systemGray4), lineWidth: 1))
                .padding()
            }
            .navigationTitle("Edit profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }
                    
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    CommunityProfileEditView()
}
