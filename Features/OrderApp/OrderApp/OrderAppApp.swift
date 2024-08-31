//
//  OrderAppApp.swift
//  OrderApp
//
//  Created by Azizbek Musurmonov   on 06/08/24.
//

import SwiftUI
import Order

@main
struct OrderAppApp: App {
    
    @StateObject var orderVM = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            OrderView()
        }
    }
}
