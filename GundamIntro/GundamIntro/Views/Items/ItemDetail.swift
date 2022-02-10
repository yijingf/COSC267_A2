//
//  ItemDetail.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var modelData: ModelData
    var gundam: Gundam
    
    var itemIndex: Int {
        modelData.gundams.firstIndex(where: { $0.id == gundam.id })!
    }
    
    var body: some View {
        ScrollView {
            Text(gundam.name)
                .font(.title)
            Group{
                HStack(alignment: .bottom){
                    ItemImage(image: gundam.image)
                                
                    VStack(alignment: .leading){
                        Text("Height:")
                        Text("Weight:")
                        Text("Power Output:")
                    }
                                
                    Spacer()
                    VStack(alignment: .leading){
                        Text(String(format: "%.1f meters", gundam.height))// Height
                        Text(String(format: "%.1f meters", gundam.weight)) // Weight
                        Text(String(format: "%.1f kW", gundam.power)) //Power output
                    }
                }
            }
            .font(.footnote)
            .padding(.horizontal)
            
            
            VStack(alignment: .leading){
                Group{
                    HStack {
                        Text("My Collection")
                        Spacer()
                        FavoriteButton(isSet: $modelData.gundams[itemIndex].isFavorite)
                        
//                        if gundam.isFavorite {
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.yellow)
//                        }
                        
                    }
                    
                    Divider()
                    HStack{
                        Text("Unit Type")
                        Spacer()
                        Text(gundam.unitType)
                    }

                    Divider()
                    HStack {
                        Text("Armor")
                        Spacer()
                        Text(gundam.armor)
                    }

                    Divider()
                    HStack{
                        Text("Primary Pilot")
                        Spacer()
                        Text(gundam.primaryPilot)
                    }

                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                
                Divider()
                
                Text("About \(gundam.name)")
                .font(.title2)
                Spacer()
                Text(gundam.description)
                                    
            }
            .padding()
        }
        .navigationTitle(gundam.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    

    
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(gundam: ModelData().gundams[0])
    }
}
