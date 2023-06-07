//
//  Mission.swift
//  Moonshot
//
//  Created by Rob Ranf on 6/5/23.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    // Computed property to get the mission name from the mission id
    var displayName: String {
        "Apollo \(id)"
    }
    
    // Computed property to get the image name from the mission id
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
