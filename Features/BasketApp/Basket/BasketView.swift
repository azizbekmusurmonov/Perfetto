//
//  BasketView.swift
//  Basket
//
//  Created by Azizbek Musurmonov   on 24/08/24.
//

import SwiftUI

public struct BasketView: View {
    @State private var showBasketDetails = false
    
    public init() { }
        
    public var body: some View {
        NavigationView {
            VStack {
                Text("Savat")

                ScrollView {
                    VStack {
                        BasketItemView()
                            .padding(.top)
                        BasketBalanceView()

                        // NavigationLink ni alohida joylashtiring
                        NavigationLink(destination: BasketDetailsView()) {
                            BasketButtonView(buttonText: "Buyurtma berish")
                        }
                        .padding(.horizontal)

                        Spacer()
                    }
                }
                .background(Color.gray.opacity(0.1)) // Yengil fon
            }
        }
    }

}


#Preview {
    BasketView()
}
