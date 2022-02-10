//
//  ContentView.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ItemList()
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .environmentObject(ModelData())
    }
}
