//
//  CommunityView.swift
//  Sneakult
//
//  Created by STUDENT on 23/04/24.
//

import SwiftUI

struct CommunityView: View{
    @State private var SearchTitle: String = ""
    @State private var isEditing = false
    var body: some View{
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(0...8, id: \.self){
                        community in CommunityUIViewCell()
                    }
                }
            }
            .navigationTitle("Community")
//            .navigationBarItems(trailing: CommunityProfileView())
            .searchable(text: $SearchTitle)
//         .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        isEditing.toggle()
                    }){
                        Image(systemName: "plus.circle")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                    }
                   
//                    Button("Edit") {
//                        isEditing.toggle() // Toggle the state variable to show/hide the edit view
//                    }
                }
                
                
            }
            
        }
        .sheet(isPresented: $isEditing) { // Present modally when isEditing is true
            CommunityAddPostView() // Replace EditView with your actual edit view
        }
     
        
        
    }
}

#Preview {
    CommunityView()
}
