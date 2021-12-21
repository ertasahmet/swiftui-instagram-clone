//
//  UserCell.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        
        HStack {
            Image("joker")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack (alignment: .leading) {
                Text("joker")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Heath Ledger")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
