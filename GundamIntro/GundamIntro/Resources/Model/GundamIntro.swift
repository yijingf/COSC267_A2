//
//  GundamIntro.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import Foundation
import SwiftUI

struct Gundam: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var unitType: String
    var primaryPilot: String
    var armor: String
    var weight: CGFloat
    var height: CGFloat
    var description: String
    var power: CGFloat
    var isFavorite: Bool
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
}
