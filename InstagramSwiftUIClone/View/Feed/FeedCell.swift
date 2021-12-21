//
//  FeedCell.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            // user info
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding([.leading, .bottom], 8)
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // action buttons
            HStack (spacing: 16) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .foregroundColor(.black)
            .padding(.leading, 4)
            
            // caption
            
            Text("3 likes")
                .font(.system(size: 15, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            
            HStack {
                Text("batman")
                    .font(.system(size: 15, weight: .semibold)) +
                Text(" All man have limits. They learn what they are and learn not to exceed them. I ignore mine.")
                    .font(.system(size: 15))
            }
            // horizontal padding, leading ve trailing verir.
            .padding(.horizontal, 8)
            .padding(.bottom, 2)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 0)
                
        }
        
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
