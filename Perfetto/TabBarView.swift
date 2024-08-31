//
//  TabBarView.swift
//  Perfetto
//
//  Created by Azizbek Musurmonov   on 06/08/24.
//

import SwiftUI
import Home
import Profile
import Order
import Basket
import AssetKit
import Core
import NetworkManager

struct TabBarView: View {
    
    @StateObject var homeVMm = HomeViewModel()
    @StateObject var basketVM = BasketViewModel()
    @StateObject var orderVM = OrderViewModel()
    @StateObject var profileVM = ProfileViewModel()
    @State var selection: Int = 0
    
    var body: some View {
        
        ZStack {
            
            Blur(style: .extraLight)
                .edgesIgnoringSafeArea(.all)
            
            TabView(selection: $selection) {
                HomeView()
                    .tabItem {
                        Image(systemName: "applelogo")
                        Text("Asosiy")
                    }
                    .tag(0)
                    .environmentObject(homeVMm)
                
                HomeView()
                    .tabItem {
                        Image(systemName: "applelogo")
                        Text("Buyurtma")
                    }
                    .tag(1)
                    .environmentObject(orderVM)
                
                HomeView()
                    .tabItem {
                        Image(systemName: "applelogo")
                        Text("Savat")
                    }
                    .tag(2)
                    .environmentObject(basketVM)
                
                HomeView()
                    .tabItem {
                        Image(systemName: "applelogo")
                        Text("Profil")
                    }
                    .tag(3)
                    .environmentObject(profileVM)
            }
            .accentColor(.gray)
        }
    }
}
