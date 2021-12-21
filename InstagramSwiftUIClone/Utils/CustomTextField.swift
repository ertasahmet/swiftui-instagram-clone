//
//  CustomTextField.swift
//  InstagramSwiftUIClone
//
//  Created by user on 10.12.2021.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeHolder: Text
    let imageName: String
    
    var body: some View {
        ZStack (alignment: .leading) {
            if text.isEmpty {
                placeHolder
                    .foregroundColor(Color.init(white: 1, opacity: 0.8))
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                TextField("", text: $text)
            }
            
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), placeHolder: Text("Email"), imageName: "envelope")
    }
}
