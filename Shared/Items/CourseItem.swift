//
//  CourseItem.swift
//  DesignCode_iOS14
//
//  Created by MANAS VIJAYWARGIYA on 01/12/20.
//

import SwiftUI

struct CourseItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image("Illustration 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text("SwiftUI for iOS 14")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Text("20 Sections")
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .shadow(radius: 10)
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(10.0)
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
