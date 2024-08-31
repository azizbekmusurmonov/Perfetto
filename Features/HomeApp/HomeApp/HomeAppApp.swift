//
//  HomeAppApp.swift
//  HomeApp
//
//  Created by Azizbek Musurmonov   on 06/08/24.
//

import SwiftUI
import Home

@main
struct HomeAppApp: App {
    
    @StateObject var homeVM = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
