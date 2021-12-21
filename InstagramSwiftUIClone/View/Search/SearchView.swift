//
//  SearchView.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var isEditing = false
    
    var body: some View {
        
        ScrollView {
            
            SearchBar(text: $searchText, isEditing: $isEditing)
                .padding()
            
            ZStack {
                if isEditing {
                    UserListView()
                } else {
                    PostGridView()
                }
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
