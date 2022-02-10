//
//  HomeView.swift
//  GundamIntro
//
//  Created by FengYuka on 2/10/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("my_list") var isListActive: Bool = true
    
    var body: some View {
        VStack{
            NavigationView{
                VStack {
                    Text("Welcome to the Gundam Collection")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Image("01_RX-78-2_Gundam")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    HStack {
                        NavigationLink(
                            destination: CollectionView(),
                            label:{
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                }
                        )
                            .navigationBarHidden(true)
                            .padding()
                        
                        Spacer()
                        
                        NavigationLink(
                            destination: ContentView(),
                            label:{
                                Text("Models")
                                    .font(.title2)
                                }
                        )
                            .navigationBarHidden(true)
                            .padding()
                        
                        Spacer()
                        
                        NavigationLink(
                            destination: secondView(),
                            label:{
                                Text("Profile")
                                    .font(.title2)
                                }
                        )
                            .navigationTitle("Home")
                            .navigationBarHidden(true)
                            .padding()
                        
                    } // Hstack
                }
            } // Navigation

        } // Vstack
    }
}

struct secondView: View{
    var body: some View {
        Text("A Fake User Profile Page")
    }
}

struct CollectionView: View{
    var body: some View {
        Text("A Fake Collection Page")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
