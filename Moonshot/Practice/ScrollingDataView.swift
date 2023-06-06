//
//  ScrollingDataView.swift
//  Moonshot
//
//  Created by Rob Ranf on 5/16/23.
//

import SwiftUI

struct ScrollingDataView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("Creating a new CustomText for item")
        self.text = text
    }
}

struct ScrollingDataView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingDataView()
    }
}
