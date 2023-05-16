//
//  MadisonView.swift
//  Moonshot
//
//  Created by Rob Ranf on 5/16/23.
//

import SwiftUI

struct MadisonView: View {
    var body: some View {
//        Image("madison")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 300, height: 300)
        GeometryReader { geo in
            Image("madison")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct MadisonView_Previews: PreviewProvider {
    static var previews: some View {
        MadisonView()
    }
}
