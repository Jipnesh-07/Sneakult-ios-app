
import SwiftUI

struct BidCardView: View {
    
   
    var bidcard : BidsCard
    @State private var UserImage: [String] = ["image1","shoe1","shoes"]
    @State private var SelectUserName: String = ""
    var body: some View {
        

        
            HStack {
                ZStack(alignment: .topTrailing) {
                    Image(bidcard.image)
                        .resizable()
                        .frame(width: 160, height: 180)
                    .aspectRatio(contentMode: .fit)
                    Text(bidcard.time)
                        .padding(4)
                        .foregroundColor(Color(.black))
                        .opacity(0.8)
//                        .shadow(radius: 1)
                    
                    .background(Color(red: 220/255, green: 220/255, blue: 220/255))                }
                VStack(alignment: .leading) {
                    Text(bidcard.title)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
//                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        .foregroundColor(.black)
                    
                    Text("By @\(bidcard.seller)")
                        .font(.callout)
                    Text("Current Bid: \(bidcard.currentBid)")
                        .font(.callout)
                        .foregroundColor(.black)
                   
                    
                    NavigationLink(destination: BiddingPageView(shoe: bidcard)) {
                            Text("Place Bid")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: 15)
                                .padding(12)
                                .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                                .cornerRadius(20)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                    
                        .frame(maxWidth: .infinity, maxHeight: 15)
                        .padding(12)
                        
                        .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                        .cornerRadius(25)
                    
                    
                }
                .padding(8)
                
            }
        
        //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5)
    }
}


struct BidCardView_Preview: PreviewProvider {
    static var previews: some View {
        BidCardView(bidcard: BidCardDataModel().getAllBidCards()[0])
            .background(Color.white)
            .previewLayout(.fixed(width: .infinity, height: 180 ))
    }
}
