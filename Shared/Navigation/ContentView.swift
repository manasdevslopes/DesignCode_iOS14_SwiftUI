//
//  ContentView.swift
//  Shared
//
//  Created by MANAS VIJAYWARGIYA on 29/11/20.
//

import SwiftUI

struct ContentView: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        Sidebar()
        #else
        Sidebar()
            .frame(minWidth:1100, minHeight: 600)
        #endif
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
