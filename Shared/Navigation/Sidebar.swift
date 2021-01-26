//
//  Sidebar.swift
//  DesignCode_iOS14
//
//  Created by MANAS VIJAYWARGIYA on 30/11/20.
//

import SwiftUI

struct Sidebar: View {
    @ViewBuilder
    var body: some View {
        NavigationView {
            #if os(iOS)
            content
                .navigationTitle("Learn")
                .toolbar{
                    ToolbarItem(placement:.navigationBarTrailing) {
                        Image(systemName: "person.crop.circle")
                    }
                }
            #else
            content
                .toolbar{
                    ToolbarItem {
                        Button(action: {}) {
                            Image(systemName: "person.crop.circle")
                        }
                    }
                }
                .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            #endif
            
            CourseView()
        }
    }
    var content: some View {
        List {
            NavigationLink(destination: CourseView()) {
                Label("Courses", systemImage: "book.closed")
            }
            Label("Tutorials", systemImage: "list.bullet.rectangle")
            Label("Livestrams", systemImage: "tv")
            Label("Certificates", systemImage: "mail.stack")
            Label("Search", systemImage: "magnifyingglass")
        }
        .listStyle(SidebarListStyle())
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Sidebar()
                .previewDevice("iPhone 11")
            Sidebar()
                .previewDevice("iPad Air (4th generation)")
        }
    }
}
