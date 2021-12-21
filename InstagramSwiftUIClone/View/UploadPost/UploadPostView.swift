//
//  UploadPostView.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage : Image?
    @State var captionText = ""
    @State var imagePickerPresented = false
    
    var body: some View {
        
        VStack {
            
            if postImage == nil {
                    
                // Image'a renderingMode'una template yapıyoruz ki resimin color'ını değiştirelim.
                VStack {
                    Button(action: {
                        imagePickerPresented.toggle()
                    }) {
                        Image("upload")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 180)
                            .clipped()
                            .padding(.top, 56)
                    }.sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                        ImagePicker(image: $selectedImage)
                    })
                    
                    Text("Upload Post")
                        .font(.system(size: 25))
                        .padding(.top)
                    
                    Spacer()
                }
            }
            
            else if let image = postImage {
                
                HStack (alignment: .top) {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                    
                    TextField("Enter your caption...", text: $captionText)
                    
                    
                }.padding()
                
                Button(action: {
                    
                }) {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                    
                }.padding()
                
                Spacer()
                
            }
        }
        
    }
}

extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
