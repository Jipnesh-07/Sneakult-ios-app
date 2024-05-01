//
//  AnnouncementsCellView.swift
//  Sneakult
//
//  Created by IOS Development on 25/04/24.
//

import SwiftUI

struct AnnouncementsCellView: View {
    @State private var shoe: [String] = [ "Shoe2", "Shoe7", "Shoe8", "Shoe10", "shoes"]
    @State private var selectShoe: String = ""
    
    var body: some View {
        
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: 300, height: 130)
//                .shadow(radius: 10)
                .opacity(2)
                .overlay{
                    HStack{
                        Image(selectShoe)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 130)
                            .clipShape(Rectangle())
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Weekly Highest Bid")
                                .foregroundColor(Color(.accent))
                                .font(.headline)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                            
                            Text("₹809990")
                                .font(.headline)
                                .foregroundColor(.black)
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                    }
                }
                .shadow(radius: 8)
            
        

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
