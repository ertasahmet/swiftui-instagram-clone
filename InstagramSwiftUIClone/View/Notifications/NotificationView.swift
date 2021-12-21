//
//  NotificationView.swift
//  InstagramSwiftUIClone
//
//  Created by user on 6.12.2021.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView {
            LazyVStack (spacing: 10) {
                ForEach(0 ..< 20) {_ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
