
import SwiftUI

struct BidCardView: View {
    var body: some View {
        
            HStack {
                ZStack(alignment: .topTrailing) {
                    Image("shoes")
                        .resizable()
                        .frame(width: 160, height: 180)
                    .aspectRatio(contentMode: .fit)
                   Text("56s:33ms")
                        .padding(4)
                }
                VStack(alignment: .leading) {
                    Text("Nike Air Force 1 Low")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                    
                    Text("By @Makhan ")
                        .font(.callout)
                    Text("Current Bid: ₹23500")
                        .font(.callout)
                   
                    
                    NavigationLink(destination: BiddingPageView()) {
                            Text("Place Bid")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: 15)
                                .padding(12)
                                .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                                .cornerRadius(25)
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
        BidCardView()
            .background(Color.white)
            .previewLayout(.fixed(width: .infinity, height: 180 ))
    }
}
