import SwiftUI
import SceneKit

// View for displaying details of a sneaker
struct SneakerDetailView: View {
    var card: Card // Data model for the sneaker
    @State var scene: SCNScene? // Scene to display the sneaker
    @State private var selectedSize = 7 // Selected size, default is 7
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // Sneaker title
                Text(card.text)
                    .font(.largeTitle)
                    .foregroundStyle(Color.accentColor)
                    .fontWeight(.bold)
                
                // Description
                Text("Limited Edition especially for Golf Players")
                    .font(.subheadline)
                
                // Seller name
                Text("By @\(card.sellerName)")
                
                // Scene view displaying the sneaker
                if let scene = scene {
                    CustomSceneView1(scene: scene)
                        .frame(width: .infinity, height: 350)
                }
                
                // Size selection and price
                HStack {
                    VStack(spacing: 4){
                        Text("Size UK:")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        // Size options
                        HStack(alignment: .center) {
                            Text("7")
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .background(Color(.accent))
                                .clipShape(Circle())
                            Text("8")
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .background(Color(.gray))
                                .clipShape(Circle())
                            Text("9")
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .background(Color(.gray))
                                .clipShape(Circle())
                        }
                    }
                    Spacer()
                    
                    // Price
                    Text("₹\(card.price)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding(.top, 40)
                
                // Add to cart button
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
        .onAppear {
            self.loadScene() // Load the 3D scene of the sneaker
        }
    }
    
    // Function to load the 3D scene of the sneaker
    func loadScene() {
        if let sceneName = card.sceneFileName {
            scene = SCNScene(named: sceneName)
        }
    }
}
