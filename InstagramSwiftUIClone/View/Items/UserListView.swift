//
//  UserListView.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack (spacing: 20) {
                ForEach(0 ..< 20) {_ in
                    NavigationLink(destination: ProfileView()) {
                        UserCell()
                            .padding(.leading)
                    }
                }
            }
        }
        
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
