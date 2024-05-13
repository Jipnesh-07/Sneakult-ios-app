//
//  SneakerARView.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import SwiftUI
import SceneKit

// View for displaying a 3D model of a sneaker in AR
struct SneakerARView: View {
    @State var scene: SCNScene? = SCNScene(named: "sneaker_pegasustrail.usdz") // Initial scene
    
    var body: some View {
        VStack {
            // MARK: 3D Preview
            CustomSceneView(scene: $scene) // Display the custom SceneView
                .frame(width: 300, height: 300)
        }
    }
}

// Preview for SneakerARView
#Preview {
    SneakerARView()
}

// UIViewRepresentable to display a SceneKit scene in SwiftUI
struct CustomSceneView: UIViewRepresentable {
    @Binding var scene: SCNScene? // Binding to update the scene
    
    // Create the SceneKit view
    func makeUIView(context: Context) -> some SCNView {
        let view = SCNView()
        view.scene = scene // Set the scene
        view.allowsCameraControl = true // Allow camera control
        view.autoenablesDefaultLighting = true // Enable default lighting
        view.antialiasingMode = .multisampling2X // Set antialiasing mode
        view.backgroundColor = .clear // Set background color
        return view
    }
    
    // Update the SceneKit view
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // No need for updates
    }
}

