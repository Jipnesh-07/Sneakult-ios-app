

import SwiftUI
import UIKit

struct CommunityAddPostView: View {
    @State private var caption = ""
    @State private var selectedImage: UIImage? = nil
    @State private var showImagePicker = false
    @Environment(\.dismiss) var dismiss
    var onPost: (Post) -> Void // Closure to handle posting
    @Binding var posts: [Post] // Binding for posts
    @ObservedObject var postDataModel: PostDataModel // Observable object for post data
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    if let image = selectedImage {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                    } else {
                        Button(action: {
                            showImagePicker = true
                        }) {
                            Image(systemName: "camera")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .foregroundColor(.blue)
                        }
                    }
                }
                
                TextField("Write a caption", text: $caption)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
            }
            .padding()
            .navigationTitle("New Post")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Post") {
                        let newPost = Post(userName: "Mathew Wade", time: "Now", image: "image3", caption: caption, likes: 0, share: "")
                        onPost(newPost) // Add the new post to the posts array
                        caption = ""
                        selectedImage = nil
                        dismiss() // Dismiss the sheet after adding the post
                    }
                    .disabled(caption.isEmpty || selectedImage == nil)
                }
            }
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: $selectedImage)
        }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController
    var sourceType: UIImagePickerController.SourceType
    @Binding var selectedImage: UIImage?
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // Nothing to update here
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[.originalImage] as? UIImage {
                parent.selectedImage = selectedImage
            }
            picker.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
    }
}

#Preview {
    CommunityAddPostView(onPost: { newPost in
        // Handle the new post here
        print("New post added: \(newPost)")
    }, posts: .constant([]), postDataModel: PostDataModel())
}


