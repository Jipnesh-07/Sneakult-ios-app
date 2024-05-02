//
//  BiddingView.swift
//  App
//
//  Created by STUDENT on 19/04/24.
//

import SwiftUI

struct BiddingView: View {
    
    
    @State private var searchText = ""
    @State private var selectedSegment = 0
    var bids = BidCardDataModel().getAllBidCards()
    let bidsCardCount: Int = BidCardDataModel().getAllBidCards().count
    
     
    
    var body: some View {
        NavigationStack  {
            ScrollView {
                VStack(alignment: .leading) {
                    Picker(selection: $selectedSegment, label: Text("")){
                        Text("Recent").tag(0)
                        Text("Following").tag(1)
                        Text("Popular").tag(2)
                    }
                    .pickerStyle(.segmented)
//                    .padding(.horizontal, 16)
                    
                    Text("Ongoing Bids")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        .padding(.top, 8)
                    
                    
                  

                    
                    if selectedSegment == 0 {
                        ScrollView(.vertical){
                            VStack{
                                ForEach(0..<bidsCardCount) { index in
                                    NavigationLink(destination: BiddingPageView(shoe: bids[index])) {
                                        BidCardView(bidcard: bids[index])
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                            
                                            .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.1))
                    //                        .padding(.horizontal, 16)
//                                            .shadow(radius: 5)
                                            .padding(.bottom, 8)
                                    }
                                }
                            }
                        }
                    }
                       
                    
                    if selectedSegment == 1 {
                        ScrollView(.vertical){
                            VStack{
                                ForEach(2..<bidsCardCount) { index in
                                    NavigationLink(destination: BiddingPageView(shoe: bids[index])) {
                                        BidCardView(bidcard: bids[index])
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                            
                                            .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.1))
                    //                        .padding(.horizontal, 16)
                                            .shadow(radius: 15)
                                            .padding(.bottom, 8)
                                    }
                                }
                            }
                        }
                    }
                      
                    
                    if selectedSegment == 2{
                        ScrollView(.vertical){
                            VStack{
                                ForEach(1..<2) { index in
                                    NavigationLink(destination: BiddingPageView(shoe: bids[index])) {
                                        BidCardView(bidcard: bids[index])
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                            
                                            .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.1))
                    //                        .padding(.horizontal, 16)
                                            .shadow(radius: 15)
                                            .padding(.bottom, 8)
                                    }
                                }
                            }
                        }
                    }
                      
                    
//                    BidCardView()
//                        .frame(height: 180)
//                        .clipShape(RoundedRectangle(cornerRadius: 12))
//                        .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.5))
////                        .padding(.horizontal, 16)
//                        .padding(.bottom, 6)
                    
//                    BidCardView()
//                        .frame(height: 180)
//                        .clipShape(RoundedRectangle(cornerRadius: 12))
//                        .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.5))
////                        .padding(.horizontal, 16)
//                        .padding(.bottom, 8)
                    
                }
                .padding(.horizontal, 16)
                .navigationTitle("Bidding")
            }
        }
        .searchable(text: $searchText)
    }
}

#Preview {
    BiddingView()
}
