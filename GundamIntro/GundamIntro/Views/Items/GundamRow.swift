//
//  GundamRow.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import SwiftUI

struct GundamRow: View {
    var gundam: Gundam
    
    var body: some View {
        HStack {
            gundam.image
                .resizable()
                .frame(width: 50.0, height: 70)
                .padding(.leading)
            Text(gundam.name)
            
            Spacer()
        }
    }
}

struct GundamRow_Previews: PreviewProvider {
    static var gundams = ModelData().gundams
    static var previews: some View {
        Group {
            GundamRow(gundam: gundams[0])
            GundamRow(gundam: gundams[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
