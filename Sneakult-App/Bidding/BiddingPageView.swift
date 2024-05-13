import SwiftUI

struct BiddingPageView: View {
    
    @ObservedObject var service = SocketNetworkManager()
    var shoe: BidsCard
    var bids = BidCardDataModel().getAllBidCards()
    @State var bidAmount: String = ""
    
    
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Image(systemName: "clock")
                    Text("15min Remaining")
                }
                .padding(10)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                
                
                VStack{
                    Text("₹\(shoe.currentBid)")
                        .padding(.top, 4)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                    
                    Text("Current Bidding Price")
                        .foregroundColor(Color.gray)
                    
                    Image("\(shoe.image)")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("\(shoe.title)")
                        .fontWeight(.bold)
                        .font(.title2)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        .padding()
                }
                HStack{
                    VStack(alignment : .leading){
                        Text("Product Value")
                            .foregroundColor(.gray)
                            .font(.footnote)
                        Text("₹\(shoe.productValue)")
                            .font(.title3)
                    }
                    .padding(.leading)
                    
                    VStack(alignment : .leading){
                        Text("Size")
                            .foregroundColor(.gray)
                            .font(.footnote)
                        Text("UK \(shoe.size)")
                            .font(.title3)
                    }
                    .padding(.leading)
                    
                    VStack(alignment : .leading){
                        Text("Color")
                            .foregroundColor(.gray)
                            .font(.footnote)
                        Text(shoe.colour)
                            .font(.title3)
                    }
                    
                    .padding(.leading)
                    .padding()
                    
                }
                
        
                VStack {
                    ForEach(service.messages, id: \.self.id) { message in
                        BidCell(price: message.text, user: message.user)
                    }
                   
                    
                    
                    HStack {
                        TextField(text: $bidAmount, label: {Text("12000")})
                            .frame(maxWidth: .infinity, maxHeight: 25)
                            .padding(12)
                            //                .background(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.5))
//                        Button(action: {
//                            //Todo: Perform Action
//                        }, label: {
//                            
////                            Image(systemName: "minus.square.fill")
////                                .foregroundColor(.gray)
////                                .padding(.leading)
////                            
////                            Text(shoe.currentBid)
////                                .foregroundColor(.gray)
////                                .font(.title3)
////                            //                        .padding()
////
////                            Image(systemName: "plus.square.fill")
////                                .foregroundColor(.gray)
//                                .padding(.trailing)
//                        })
//                        .frame(maxWidth: .infinity, maxHeight: 25)
//                        .padding(12)
//                        //                .background(.black)
//                        .clipShape(RoundedRectangle(cornerRadius: 12))
//                        .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.5))
//                        //                .cornerRadius(16)
//                        
                        
                        Button(action: {
                            SocketNetworkManager().makeBid(bidAmount: bidAmount)
                            
                        }, label: {
                            Text("Place Bid")
                                .foregroundColor(.white)
                                .font(.title2)
                            
                        })
                        .frame(maxWidth: .infinity, maxHeight: 25)
                        .padding(12)
                        
                        .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                        .cornerRadius(16)
                    }
                    .padding()
                    
                    
                    Spacer()
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


