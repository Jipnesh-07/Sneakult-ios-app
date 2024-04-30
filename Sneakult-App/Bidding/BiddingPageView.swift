import SwiftUI

struct BiddingPageView: View {
    var body: some View {
       ScrollView {
            VStack {
                HStack{
                    Image(systemName: "clock")
                    Text("15 Seconds Remaining")
                }
                .padding(10)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.gray)
                
                
                VStack{
                    Text("₹8097")
                        .padding(.top, 4)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                    Text("Current Bidding Price")
                        .foregroundColor(Color.gray)
                    Image("shoes")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: .fit)
                        
                    Text("Nike Air Force Retro A1")
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
                        Text("₹8000")
                            .font(.title3)
                    }
                    .padding(.leading)
                    
                    VStack(alignment : .leading){
                        Text("Size")
                            .foregroundColor(.gray)
                            .font(.footnote)
                        Text("UK 4.5")
                            .font(.title3)
                    }
                    .padding(.leading)
                    
                    VStack(alignment : .leading){
                        Text("Color")
                            .foregroundColor(.gray)
                            .font(.footnote)
                        Text("Black/grey")
                            .font(.title3)
                    }
                    
                    .padding(.leading)
                    .padding()
        
                }
                
                VStack (alignment : .leading){
                    Text("Bid Positions (30 Values)")
                        .font(.title2)
                }
                
                VStack{
                    HStack {
                        HStack{
                            Text("01")
                            Text("Jatin Bansal")
                        }
                        Spacer()
                        Text("₹8697")
                    }
                    .padding(.vertical, 20)
                    HStack {
                        HStack{
                            Text("01")
                            Text("Jatin Bansal")
                        }
                        Spacer()
                        Text("₹8697")
                    }
                    .padding(.vertical, 20)
                    HStack {
                        HStack{
                            Text("01")
                            Text("Jatin Bansal")
                        }
                        Spacer()
                        Text("₹8697")
                    }
                    .padding(.vertical, 20)
                    HStack {
                        HStack{
                            Text("01")
                            Text("Jatin Bansal")
                        }
                        Spacer()
                        Text("₹8697")
                    }
                    .padding(.vertical, 20)
                }
                .padding(.horizontal, 30)
            
              
                
                HStack {
                    Button(action: {
                        //Todo: Perform Action
                    }, label: {
                        Image(systemName: "minus.square.fill")
                            .foregroundColor(.gray)
                            .padding(.leading)
                        
                        Text("₹8097")
                            .foregroundColor(.gray)
                            .font(.title3)
    //                        .padding()
                        
                        
                        Image(systemName: "plus.square.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    })
                    .frame(maxWidth: .infinity, maxHeight: 25)
                    .padding(12)
    //                .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke( Color.black, lineWidth: 0.5))
    //                .cornerRadius(16)

                    
                    Button(action: {
                        //Todo: Perform Action
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

#Preview {
    BiddingPageView()
}
