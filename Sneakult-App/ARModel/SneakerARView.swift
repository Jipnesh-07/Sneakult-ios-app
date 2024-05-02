//
//  SneakerARView.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import SwiftUI
import SceneKit

struct SneakerARView: View {
    @State var scene: SCNScene? = .init(named: "sneaker_pegasustrail.usdz")
    
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
        view.scene = scene
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.backgroundColor = .clear
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

