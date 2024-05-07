import SwiftUI
import SceneKit

struct SneakerDetailView: View {
    var card: Card
    @State var scene: SCNScene?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(card.text)
                    .font(.largeTitle)
                    .foregroundStyle(Color.accentColor)
                    .fontWeight(.bold)
                Text("Limited Edition especially for Golf Players")
                    .font(.subheadline)
                Text("By @\(card.sellerName)")
                
                if let scene = scene {
                    CustomSceneView1(scene: scene)
                        .frame(width: .infinity, height: 350)
                }
                
                HStack {
                    VStack(spacing: 4){
                        Text("Size UK:")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        HStack(alignment: .center) {
                            Text("7")
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                                .background(Color(.systemGray))
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
                    Text("₹\(card.price)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding(.top, 40)
                
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
            self.loadScene()
        }
    }
    
    func loadScene() {
        if let sceneName = card.sceneFileName {
            scene = SCNScene(named: sceneName)
        }
    }
}

