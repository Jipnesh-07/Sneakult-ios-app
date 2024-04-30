//
//  KicksUIView.swift
//  Sneakult-App
//
//  Created by STUDENT on 30/04/24.
//

import SwiftUI

struct KicksUIView: View {
    @State private var searchText: String = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        NavigationView{
            ScrollView{
                VStack{
                    Text("N")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                }
            }
        }
    }
}

#Preview {
    KicksUIView()
}
