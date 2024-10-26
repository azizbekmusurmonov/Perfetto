//
//  BasketButtonView.swift
//  Basket
//
//  Created by maqsud on 25/10/24.
//

import SwiftUI

struct BasketButtonView: View {
    var body: some View {
        Button(action: {
        }) {
            Text("Buyurtma berish")
                .foregroundColor(.black)
                .frame(width: UIScreen.main.bounds.width - 32 , height: 59)
                .background(Color.yellow) // Fon rangini sariq qilib belgilash
                .cornerRadius(10) // Burchaklarini yumshatish
        }
        .padding(.horizontal)
        
        
    }
}

#Preview {
    BasketButtonView()
}
