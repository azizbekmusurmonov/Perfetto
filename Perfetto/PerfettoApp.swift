//
//  PerfettoApp.swift
//  Perfetto
//
//  Created by Azizbek Musurmonov   on 02/08/24.
//

import SwiftUI
import Home
import Core

@main
struct PerfettoApp: App {
    
    @StateObject var homeVM = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .preferredColorScheme(.light)
                .environmentObject(homeVM)
        }
    }
}
