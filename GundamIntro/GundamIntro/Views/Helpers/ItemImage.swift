//
//  GundamImage.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import SwiftUI

struct ItemImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 150, height: 250)
            .overlay{
                Rectangle().stroke(.gray, lineWidth: 3)
            }

//        .clipShape(Circle())
//        .overlay {
//            Circle().stroke(.white, lineWidth: 4)
//            }
//        .shadow(radius: 7)
    }
}

struct ItemImage_Previews: PreviewProvider {
    static var previews: some View {
        ItemImage(image: Image("01_RX-78-2_Gundam"))
    }
}
