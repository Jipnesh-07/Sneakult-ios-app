import SwiftUI

struct ProfileView: View {
    
    @State private var isEditing = false 
    var body: some View {
        NavigationStack {
            List {
                Section {
                    VStack(alignment: .leading) {
                        HStack {
                            Image("sample 1")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .scaledToFit()
                                .clipShape(Circle())
                                .padding(.trailing, 16)
                            VStack(alignment: .leading) {
                                Text("John Doe")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Text("john09@gmail.com")
                                    .accentColor(.gray)
                            }
                            //                            Spacer()
                        }
                        .padding(.vertical, 8)
                        
                        Divider()
                        
                        VStack {
                            HStack(alignment: .center, spacing: 30 ) {
                                Text("20 Follower")
                                    .font(.callout)
                                Divider()
                                Text("20 Following")
                                    .font(.callout)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                
                Section {
                    VStack {
                        NavigationLink( destination: NewSneakerListing()) {
                            HStack {
                                Text("My listings")
                                    .fontWeight(.semibold)
                            }
                        }
                        
                        HStack(spacing: 12) {
                            Image("Image")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                            
                            Image("Image")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                            
                            VStack{
                                
                                Image(systemName: "plus.circle")
                                Text("Add more")
                            }
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke( Color.black, lineWidth: 1))
                        }
                    }
                    .padding(8)
                }
                
                Section {
                    NavigationLink(destination: MyOrdersView()) {
                        Label("My Order", systemImage: "person.crop.circle")
                    }
                    NavigationLink(destination: MyBidsView()) { // Added NavigationLink for Logout
                        Label("My Bids", systemImage: "rectangle.portrait.and.arrow.right")
                    }
                    NavigationLink(destination: PaymentCardCellView()) {
                        Label("Payments", systemImage: "creditcard")
                    }
                    NavigationLink(destination: settingsView()) {
                        Label("Settings", systemImage: "gear")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .listSectionSpacing(40)
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // "Edit" Button
                    Button("Edit") {
                        isEditing.toggle() // Toggle the state variable to show/hide the edit view
                    }
                    .font(.headline)
                    .foregroundColor(.accent)
                    //                    .padding(.top,-20)
                }
            }
            .sheet(isPresented: $isEditing) { // Present modally when isEditing is true
                CommunityProfileEditView() // Replace EditView with your actual edit view
            }
        }
        
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .foregroundColor(.black)
    }
}

// You would need to create the LogoutView to handle the logout process
struct LogoutView: View {
    var body: some View {
        Text("Logout View")
        // Implement the logout functionality here
    }
}


