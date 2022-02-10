//
//  GundamIntroApp.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import SwiftUI

@main
struct GundamIntroApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
