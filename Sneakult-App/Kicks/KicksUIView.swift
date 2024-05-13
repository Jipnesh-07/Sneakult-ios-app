import SwiftUI
import SceneKit

struct KicksUIView: View {
    
    var cards = CardDataModel().getAllCards()
    //    var cardNames = CardDataModel().getAllCardSceneNames()
    let cardsCount: Int = CardDataModel().getAllCards().count
    @State private var isEditing = false
    var announcements = AnnouncementsDataModel().getAllAnnouncements()
    let announcementsCount: Int = AnnouncementsDataModel().getAllAnnouncements().count
    
    @State private var searchText: String = ""
    @State private var isFilterViewPresented = false
    @State private var GridImage: [String] = [ "image1", "image2","image3", "image5"]
    @State private var GridImage2: [String] = ["image6", "image7", "image8"]
    @State private var GridImage3: [String] = ["image1", "imaage2", "image4"]
    @State private var SelectGridImage: String = ""
    @State private var SelectGridImage2: String = ""
    @State private var SelectGridImage3: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 1) {
                    
                    VStack(alignment: .leading){
                        
                        
                        VStack(alignment: .center){
                            
                            ForEach(0..<1) { index in
                                NavigationLink(destination: SneakerDetailView(card: cards[1])) {
                                    KicksViewCard(card: cards[1])
                                }
                            }
                        }
                        
                        HStack{
                            Text("New Arrival")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(.horizontal)
                                .padding(.top,20)
                            
                            
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<cardsCount) { index in
                                    NavigationLink(destination: SneakerDetailView(card: cards[index])) {
                                        NewArrivalCellView(card: cards[index])
                                    }
                                }
                            }
                            .padding()
                        }
                        
                        
                        Text("Join #SneakultFam")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            .padding(.vertical,-5)
                        
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            NavigationLink(destination: CommunityView()){
                                HStack {
                                    
                                    
                                    ForEach(0..<2) { index in
                                        VStack {
                                            
                                            Image(SelectGridImage)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 190, height:200)
                                                .cornerRadius(12)
                                                .clipped()
                                            
                                            Image(SelectGridImage2)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 190, height:200)
                                                .cornerRadius(12)
                                                .clipped()
                                        }
                                        .onAppear {
                                            SelectGridImage = GridImage.randomElement() ?? "defaultShoeImage"
                                            SelectGridImage2 = GridImage2.randomElement() ?? "defaultShoeImage"
                                            SelectGridImage3 = GridImage3.randomElement() ?? "defaultShoeImage"
                                        }
                                        
                                        // Horizontal image
                                        Image("image3")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(maxWidth: 170, maxHeight: 600)
                                            .cornerRadius(12)
                                    }
                                    
                                }
                            }
                        }
                        
                        .padding()
                        .edgesIgnoringSafeArea(.all)
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                }
                .navigationTitle("Hello John")
                .padding(.top, -6)}
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isEditing.toggle()
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }
            }
            .sheet(isPresented: $isEditing) {
                FilterCardView()
            }
        }
    }
}



#Preview {
    KicksUIView()
}

