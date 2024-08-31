//
//  BasketAppApp.swift
//  BasketApp
//
//  Created by Azizbek Musurmonov   on 06/08/24.
//

import SwiftUI
import Basket

@main
struct BasketAppApp: App {
    
    @StateObject var basketVM = BasketViewModel()
    
    var body: some Scene {
        WindowGroup {
            BasketView()
        }
    }
}
