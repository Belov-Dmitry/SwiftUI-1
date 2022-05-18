//
//  GroupViewCell.swift
//  SwiftUI-1
//
//  Created by Dmitry Belov on 16.05.2022.
//

import SwiftUI

struct GroupViewCell: View {
    var body: some View {
        HStack {
            Image("group_cat")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 1)
                }
                .shadow(radius: 3)
            Text("Котизм")

            Spacer()
       }
    }}

struct GroupViewCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupViewCell()
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
