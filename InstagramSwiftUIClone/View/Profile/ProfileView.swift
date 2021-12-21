//
//  ProfileView.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack (spacing: 32) {
                ProfileHeaderView()
                
                PostGridView()
            }.padding(.top)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
