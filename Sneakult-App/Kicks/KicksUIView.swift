import SwiftUI

struct KicksUIView: View {
    @State private var searchText: String = ""
    @State private var isFilterViewPresented = false 
    @State private var GridImage: [String] = [ "image1", "image2","image4", "image5"]
    @State private var SelectGridImage: String = ""
    
    
    var body: some View {
        NavigationView {
            ScrollView{VStack(alignment: .leading, spacing: 10) { // Add spacing between VStack elements
                HStack {
                    HStack(spacing: -10) {
                        Image(systemName: "magnifyingglass")
                            .padding(.leading)
                            .foregroundColor(.gray)
                        TextField("Search", text: $searchText)
                            .padding()
                            .foregroundColor(.gray)
                            .frame(height: 35)
                    }
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    
                    Button(action: {
                        isFilterViewPresented.toggle() // Toggle the state to present or dismiss the modal view
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .padding()
                            .frame(width: 40, height: 35)
                            .foregroundColor(.accentColor)
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                    }
                    .padding(.trailing) // Add trailing padding
                    .sheet(isPresented: $isFilterViewPresented) {
                        FilterCardView()
                    }
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading){
                    HStack(spacing: 170){
                        Text("New Arrival")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        
                        
                        Button{
                            
                        } label:{
                            Text("View all")
                            
                        }
                        
                        //
                        
                        
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0...4, id: \.self) { _ in
                                NavigationLink(destination: SneakerDetailView()){
                                    NewArrivalCellView()
                                }
                                    .frame(width: 150,height: 230)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("Announcements")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .padding(.vertical,-5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0...3, id: \.self) { _ in
                                AnnouncementsCellView()
                                    .frame(width: 300, height: 170)
                                    .opacity(8)
                                    .background(Color(.white))// Adjust frame size to fit the cell properly
                            }
                        }
                        .padding(.horizontal)
                        //                        .padding(.bottom, 10) // Add bottom padding to the Announcements ScrollView
                    }
                    
                    Text("Join #SneakultFam")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .padding(.vertical,-5)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            
                            
                            ForEach(0..<2) { index in
                                VStack {
                                    
                                    Image(SelectGridImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 190, height:200)
                                        .cornerRadius(12)
                                        .clipped()
                                    
                                    Image("image1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 190, height:200)
                                        .cornerRadius(12)
                                        .clipped()
                                }
                                .onAppear {
                                    SelectGridImage = GridImage.randomElement() ?? "defaultShoeImage"
                                }
                                
                                // Horizontal image
                                Image("image3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: 170, maxHeight: 600)
                                    .cornerRadius(12)
                            }
                            //                                        .clipped()
                            
                        }
                    }
                    
                    .padding()
                    .edgesIgnoringSafeArea(.all)
                    .navigationTitle("Hello John")
                    
                    
                    
                }
                
                
                
                
                
            }
            .navigationTitle("Hello John")
                .padding(.top, -6)} // Move the whole VStack slightly upward
        }
    }
}

struct NewArrivalCellView1: View {
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 200, height: 200)
            .cornerRadius(10)
            .padding(5)
    }
}

#if DEBUG
struct KicksUIView_Previews: PreviewProvider {
    static var previews: some View {
        KicksUIView()
    }
}
#endif
