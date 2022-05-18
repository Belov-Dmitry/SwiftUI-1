//
//  UserViewCell.swift
//  SwiftUI-1
//
//  Created by Dmitry Belov on 16.05.2022.
//

import SwiftUI

struct UserViewCell: View {
    //var friend: Friend

    var body: some View {
        HStack {
            Image("rick")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 1)
                }
                .shadow(radius: 3)
            Text("Rick Sanches")

            Spacer()
        }
    }}

struct UserViewCell_Previews: PreviewProvider {
    static var previews: some View {
        UserViewCell()
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
