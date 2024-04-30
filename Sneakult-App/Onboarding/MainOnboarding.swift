import SwiftUI

struct MainOnboarding: View {
    var body: some View {
        VStack {
            // image in background
            VStack {
                Text("What's in")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                VStack {
                    Text("SNEAKULT")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                }
                VStack(alignment:.trailing,spacing:-20){
                    
                HStack(alignment: .top) {
                    Image(systemName: "person.2")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,3)
                    
                    VStack(alignment: .leading) {
                        Text("Community")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        Text("Join our sneaker community to connect, share, and explore the latest trends together")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .lineLimit(3)
                    }
                    Spacer() // Add spacer to push text to the right
                }
                .padding()
                
                HStack(alignment: .top) {
                    Image(systemName: "indianrupeesign.arrow.circlepath")
                    //                        .resizable()
                    //                        .frame(width:30, height:30)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,3)
                    VStack(alignment: .leading) {
                        Text("Bidding")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        Text("Experience the thrill of bidding for your dream kicks in real-time auctions.")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .lineLimit(3)
                    }
                    Spacer()
                }
                .padding()
                
                HStack (alignment: .top){
                    Image(systemName: "bell")
                    //                        .resizable()
                    //                        .frame(width:30, height:30)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,3)
                    VStack(alignment: .leading) {
                        Text("Time Sensitive Notifications")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 43/255, green: 100/255, blue: 79/255))
                        Text("Stay ahead of the game with timely notifications on limited releases and exclusive deals")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .lineLimit(3)
                    }
                    Spacer()
                }
                .padding()
                }
//            
                
                
                Button(action: {
                    //Todo: Perform Action
                }, label: {
                    Text("Get started")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                })
                .frame(maxWidth: 320, maxHeight: 30)
                .padding(12)
                .background(Color(red: 43/255, green: 100/255, blue: 79/255))
                .cornerRadius(16)
                .padding(.top)
                
                Spacer()
                
            }
            .padding(.top, 100)
        }
    }
}

#Preview {
    MainOnboarding()
}
