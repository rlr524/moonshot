//
//  ContentView.swift
//  Moonshot
//
//  Created by Rob Ranf on 5/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScrollingDataView = false
    
    var body: some View {
        NavigationView {
            // NavigationLink is for showing something like details about a user's selection
            // sheet() is for showing unrelated content
            List(0..<100) { _ in
                NavigationLink {
                    MadisonView()
                } label: {
                    Text("Hello, Madison")
                        .padding()
                }
                .navigationTitle("SwiftUI")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
