//
//  SearchBar.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    @State private var offset: CGFloat = 200.0
    
    var body: some View {
        
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
            
            if isEditing {
                Button(
                    action: {
                        isEditing = false
                        text = ""
                        UIApplication.shared.endEditing()
                    }) {
                        Text("Cancel")
                            .foregroundColor(.black)
                    }
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
            }
            
        }.onTapGesture {
            isEditing = true
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search..."), isEditing: .constant(false))
    }
}
