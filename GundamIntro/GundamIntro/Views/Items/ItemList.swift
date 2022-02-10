//
//  ItemList.swift
//  GundamIntro
//
//  Created by FengYuka on 2/9/22.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filtered_gundams: [Gundam] {
        modelData.gundams.filter { gundam in
            (!showFavoritesOnly || gundam.isFavorite)
        }
    }
    
    var body: some View {
//        NavigationView{
        VStack{
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("My Collection")
                }
                
                ForEach(filtered_gundams) { gundam in
                    NavigationLink {
                        ItemDetail(gundam: gundam)
                    } label: {
                        GundamRow(gundam: gundam)
                    }
                }
                .navigationTitle("Main Gundams")
            }
        }
    }
}

//Single Version
struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ItemList()
                .previewDevice("iPhone 11 Pro")
            .environmentObject(ModelData())
        }
    }
}
