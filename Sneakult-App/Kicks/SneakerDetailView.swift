//
//  SneakerDetailView.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import SwiftUI
import SceneKit

struct SneakerDetailView: View {
    
    var card : Card
    @State var scene = SCNScene(named: "Sneaker2.usdz")
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(card.text)
                    .font(.largeTitle)
                    .foregroundStyle(Color.accentColor)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Limited Edition especially for Golf Players")
                    .font(.subheadline)
                Text("By @\(card.sellerName)")
                
                CustomSceneView(scene: $scene)
                    .frame(width: .infinity, height: 350)
                //                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                HStack {
                    VStack(spacing: 4){
                        Text("Size UK:")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        HStack(alignment: .center) {
                            Text("7")
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .background(Color(.systemGray))
                                .clipShape(Circle())
                            Text("8")                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .background(Color(.gray))
                                .clipShape(Circle())
                            Text("9")                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .background(Color(.gray))
                                .clipShape(Circle())
                        }
                    }
                    Spacer()
                    Text("₹\(card.price)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding(.top,40)
                Button(action: {
                    // Todo: Perform Action
                }, label: {
                    Text("Add")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                })
                .frame(width: 350, height: 25)
                
                .padding(12)
                
                
                .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                .cornerRadius(13)
                
            }
            .padding(20)
        }
        
        .navigationBarTitleDisplayMode(.inline)
//        .onAppear({
//            self.card3DName = card.scene?.rootNode.name ?? ""
//        })
    }
}

#Preview {
    SneakerDetailView(card: CardDataModel().getAllCards()[0])
}
