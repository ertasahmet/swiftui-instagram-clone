//
//  FeedView.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        // LazyVStack, listelerde memory'i daha iyi kullanarak kaydırma olayını ve listelemeyi çok daha iyi yönetiyor.
        
        ScrollView {
            LazyVStack (spacing: 32) {
                ForEach(0 ..< 20) { _ in
                    FeedCell()
                }
            }.padding(.top)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
