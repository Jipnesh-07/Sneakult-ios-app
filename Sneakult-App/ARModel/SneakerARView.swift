//
//  SneakerARView.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import SwiftUI
import SceneKit

struct SneakerARView: View {
    @State var scene: SCNScene? = .init(named: "sneaker_airforce.scn")
    
    var body: some View {
        VStack {
            // MARK: 3D Preview
            CustomSceneView(scene: $scene)
                .frame(width: 300, height: 300)
                
            
        }
    }
}

#Preview {
    SneakerARView()
}


struct CustomSceneView: UIViewRepresentable{
    
    @Binding var scene: SCNScene?
    
    func makeUIView(context: Context) -> some SCNView {
        let view  = SCNView()
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.scene = scene
        view.backgroundColor = .clear
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    
    
}



//class SceneController: UIViewController {
//    var sceneView: SCNView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//        sceneView = SCNView()
//        sceneView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            sceneView.topAnchor.constraint(equalTo: view.topAnchor),
//            sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//
//        ])
//        sceneView.scene?.rootNode.addChildNode(createCamera())
//        sceneView.scene?.rootNode.addChildNode(createAmbientLight())
//        sceneView.scene?.rootNode.addChildNode(createDirectionalLight())
//
//        // Create and setup SCNScene
//        let scene = SCNScene()
//        sceneView.backgroundColor = UIColor.clear
//        scene.background.contents = UIColor.clear.cgColor
//        //        material.transparencyMode = .rgbZero
//        let globe = SCNNode(named: sneaker_airforce)
//        scene.rootNode.addChildNode(globe)
//        sceneView.scene = scene
//        sceneView.allowsCameraControl = true
//    }
//
//    func createSphere() -> SCNNode {
//        let sphere = SCNSphere(radius: 0.5)
//        sphere.firstMaterial?.diffuse.contents = UIImage(named: "4")
//        let node = SCNNode(geometry: sphere)
//
//        let rotation = SCNAction.rotate(by: .pi, around: SCNVector3(0, 1, 0), duration: 20)
//        node.runAction(SCNAction.repeatForever(rotation))
//        return node
//    }
//
//    func createCamera() -> SCNNode
//    {
//        let cam = SCNCamera()
//        cam.zFar = 100.0
//        cam.fieldOfView = 60
//
//        let node = SCNNode()
//        node.camera = cam;
//        node.position = SCNVector3(0,0,7)
//        let action = SCNAction.move(to: SCNVector3(0,0,1.0), duration: 100)
//        return node
//    }
//
//    func createAmbientLight() ->SCNNode
//    {
//        let light = SCNLight()
//        light.type = .ambient
//        light.color = UIColor.gray
//        let node = SCNNode()
//        node.light = light
//
//        return node
//    }
//
//    func createDirectionalLight() ->SCNNode
//    {
//        let light = SCNLight()
//        light.type = .omni
//
//        let node = SCNNode()
//        node.position = SCNVector3(5, 5, 5)
//
//        node.light = light
//
//        return node
//    }
//}
