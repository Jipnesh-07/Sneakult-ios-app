//
//  AnnouncementsCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct AnnouncementsCellView: View {
    @State private var shoe: [String] = ["Shoe1", "Shoe2", "Shoe3", "Shoe4", "Shoe5", "Shoe6", "Shoe7", "Shoe8", "Shoe9", "Shoe10"]
    @State private var selectShoe: String = ""
    
    var body: some View {
        NavigationLink(destination: DetailView()) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: 300, height: 150)
                .overlay(
                    HStack {
                        Image(selectShoe)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 149)
                            .clipped()
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Nike High")
                                .foregroundColor(.gray)
                                .font(.headline)
                            
                            Text("$200")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                    }
                )
                .shadow(radius: 5)
        }
//        .buttonStyle()
        .onAppear {
            selectShoe = shoe.randomElement() ?? "defaultShoeImage"
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail View")
    }
}

#if DEBUG
struct AnnouncementsCellView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementsCellView()
    }
}
#endif
