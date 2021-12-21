//
//  CustomSecureTextField.swift
//  InstagramSwiftUIClone
//
//  Created by user on 10.12.2021.
//

import SwiftUI

struct CustomSecureTextField: View {
    @Binding var text: String
    let placeHolder: Text
    
    var body: some View {
        ZStack (alignment: .leading) {
            if text.isEmpty {
                placeHolder
                    .foregroundColor(Color.init(white: 1, opacity: 0.8))
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                SecureField("", text: $text)
            }
            
        }
    }
}

struct CustomSecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureTextField(text: .constant(""), placeHolder: Text("Password"))
    }
}
