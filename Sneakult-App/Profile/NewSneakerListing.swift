//
//  NewSneakerListing.swift
//  Sneakult
//
//  Created by STUDENT on 25/04/24.
//

import SwiftUI

struct NewSneakerListing: View {
    @State private var title = "Nike Air Force 1"
    @State private var category = "Sneakers"
    @State private var brand = "Nike"
    @State private var size = "UK-7"
    @State private var sku = "CH1234567"
    @State private var salePrice = "21000"
    @State private var bidPrice = "17000"

    var body: some View {
        ScrollView{
            VStack {
//                Text("Add a Sneaker")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .foregroundColor(.blue)

                HStack {
                    Image(systemName: "plus.circle")
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black, lineWidth: 1))

                    VStack(alignment: .leading) {
                        Text("Add Sneaker Photo")
                        Text("Max 5 mb")
                    }
                    .padding(30)
                }

                VStack(alignment: .leading) {
                    Text("Title")
                        .padding(.top)
                    TextField("Title", text: $title)
                        .padding(8)
                        .cornerRadius(10)
    //                    .border(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))

                    Text("Category")

                        .padding(.top)
                    TextField("Title", text: $category)
                        .padding(8)
                        .cornerRadius(10)
    //                    .border(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                    

                    HStack {
                        VStack(alignment: .leading) {
                            Text("Brand")
                                .padding(.top, 8)
                            TextField("Title", text: $brand)
                                .padding(8)
                                .cornerRadius(10)
    //                            .border(Color.black)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                        }

                        VStack(alignment: .leading) {
                            Text("Size")
                                .padding(.top, 8)
                            TextField("Title", text: $size)
                                .padding(8)
                                .cornerRadius(10)
    //                            .border(Color.black)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                        }
                    }

                    Text("SKU")
                        .padding(.top)
                    TextField("Title", text: $sku)
                        .padding(8)
                        .cornerRadius(10)
                    
    //                    .border(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                    

                    HStack {
                        VStack(alignment: .leading) {
                            Text("Sale Price")
                                .padding(.top, 8)
                            TextField("Title", text: $salePrice)
                                .padding(8)
    //                            .cornerRadius(10)
    //                            .border(Color.black)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                        }

                        VStack(alignment: .leading) {
                            Text("Bid Price")
                                .padding(.top, 8)
                            TextField("Title", text: $bidPrice)
                                .padding(8)
                                .cornerRadius(10)
    //                            .border(Color.black)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                            
                               
                        }

                    }
                }

                Spacer()

                Button(action: {
                    // Todo: Perform Action
                }, label: {
                    Text("Add")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)

                })
                .frame(width: 300, height: 25)
                .padding(12)

                .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                .cornerRadius(13)
            }
            .padding()
            .navigationTitle("Add a Sneaker")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NewSneakerListing()
}
