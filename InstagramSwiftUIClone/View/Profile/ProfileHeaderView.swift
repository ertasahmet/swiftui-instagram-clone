//
//  ProfileHeaderView.swift
//  InstagramSwiftUIClone
//
//  Created by user on 7.12.2021.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                
                HStack (spacing: 16) {
                    UserStatView(value: 3, title: "posts")
                    UserStatView(value: 253, title: "followers")
                    UserStatView(value: 186, title: "following")
                }.padding(.trailing, 32)
                
            }.padding(.leading)
            
            VStack (alignment: .leading) {
                Text("Bruce Wayne")
                    .font(.system(size: 15, weight: .semibold))
                    .padding([.leading, .top])
                
                Text("Gotham's Dark Knight || Billionaire")
                    .font(.system(size: 15))
                    .padding(.leading)
                    .padding(.top, 1)
                
            }.padding(.leading)
            
            HStack {
                Spacer()
                
                ProfileActionButtonView()
                
                Spacer()
            }
            
        }
        
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
