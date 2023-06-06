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
        
        Button("Decode JSON") {
            let input = """
            {
                "name": "Madison Ranf",
                "address": {
                    "street": "555 Madison Avenue",
                    "city": "Issaquah"
                }
            }
            """
            
            struct User: Codable {
                let name: String
                let address: Address
            }
            
            struct Address: Codable {
                let street: String
                let city: String
            }
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct MadisonView_Previews: PreviewProvider {
    static var previews: some View {
        MadisonView()
    }
}
