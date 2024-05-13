import SwiftUI

// Define a SwiftUI View called ProfileView
struct ProfileView: View {
    // State variable to manage the editing mode
    @State private var isEditing = false
    
    // Define the body of the view
    var body: some View {
        NavigationStack { // NavigationStack is a custom navigation container
            List {
                Section {
                    // User information section
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
                    // My listings section
                    VStack {
                        NavigationLink(destination: NewSneakerListing()) {
                            HStack {
                                Text("My listings")
                                    .fontWeight(.semibold)
                            }
                        }
                        
                        HStack(spacing: 12) {
                            // Displaying two images and an "Add more" button
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
                    // Navigation links to various profile-related views
                    NavigationLink(destination: MyOrdersView()) {
                        Label("My Order", systemImage: "person.crop.circle")
                    }
                    NavigationLink(destination: MyBidsView()) {
                        Label("My Bids", systemImage: "rectangle.portrait.and.arrow.right")
                    }
                    NavigationLink(destination: PaymentCardCellView()) {
                        Label("Payments", systemImage: "creditcard")
                    }
                    NavigationLink(destination: settingsView()) {
                        Label("Settings", systemImage: "gear")
                    }
                    NavigationLink(destination: LogoutView()) { // Added NavigationLink for Logout
                        Label("Logout", systemImage: "power")
                    }
                }
            }
            .listStyle(.insetGrouped) // Set list style
            .listSectionSpacing(40) // Set section spacing
            .navigationTitle("Profile") // Set navigation title
            .navigationBarTitleDisplayMode(.large) // Set title display mode
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // "Edit" Button
                    Button("Edit") {
                        isEditing.toggle() // Toggle the state variable to show/hide the edit view
                    }
                    .font(.headline)
                    .foregroundColor(.accent)
                }
            }
            .sheet(isPresented: $isEditing) { // Present modally when isEditing is true
                CommunityProfileEditView() // Replace EditView with your actual edit view
            }
        }
    }
}

// Define a SwiftUI View called LogoutView to handle the logout process
struct LogoutView: View {
    var body: some View {
        Text("Logout View")
        // Implement the logout functionality here
    }
}

// Preview provider to display ProfileView in the preview canvas
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .foregroundColor(.black) // Set the foreground color for preview
    }
}
