//
//  InfoView.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
                    Text("Freedom Gundam")
                        .font(.title)
                    
            HStack(alignment: .bottom){
                        ItemImage(image: Image("09_Zgmf-x42s_Destiny"))
                        VStack(alignment: .leading){
                            Text("Weight")
                            Text("Height:")
                            Text("Armor:")
                        }
                        .font(.body)
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Hello") // Weight
                            Text("thank you") // Height
                            Text("What?") // Armor
                        }
                        .font(.body)
                    }
                    Divider()
                    HStack{
                        Text("Unit Type")
                        Spacer()
                        Text("What type")
                            
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()
            
                    HStack {
                        Text("Primary Pilot")
                        Spacer()
                        Text("Kira Yamato")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("About")
                         .font(.title2)
                    Text("Descriptive text goes here.")
                    
                }
                .padding()
                
                Spacer()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
