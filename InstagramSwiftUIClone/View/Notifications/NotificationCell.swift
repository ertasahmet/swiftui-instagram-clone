//
//  NotificationCell.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = true
    var body: some View {
        
        HStack {
            Image("joker")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("batman")
                .font(.system(size: 15, weight: .semibold)) +
            Text(" liked one of your posts.")
                .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                
            } else {
                
                // Burada clipShape olarak capsule verdiğimizde border radius vermiş gibi oluyor.
                Button(action: {}) {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                }
            }
        }
        .padding(.horizontal)
        
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
