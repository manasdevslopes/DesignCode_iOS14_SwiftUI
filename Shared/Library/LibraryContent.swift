//
//  LibraryContent.swift
//  DesignCode_iOS14
//
//  Created by MANAS VIJAYWARGIYA on 31/12/20.
//

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    //reusable COmponent
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(CloseButton(),title: "Close Button View", category: .control)
        LibraryItem(CloseButton(),title: "Close Button View 2", category: .control)
    }
    
    //reusable Modifier
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(base.cardStyle(color: Color.blue, cornerRadius: 22), title: "Card Style", category: .effect)
    }
}

//Modifier
extension View{
    func cardStyle(color: Color, cornerRadius:CGFloat) -> some View {
        return self
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .shadow(color:color.opacity(0.3), radius: 20, x:0, y:10)
    }
}
