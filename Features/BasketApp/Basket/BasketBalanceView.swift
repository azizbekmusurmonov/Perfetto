//
//  BasketBalanceView.swift
//  Basket
//
//  Created by maqsud on 25/10/24.
//

import SwiftUI

struct BasketBalanceView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Buyurtma miqdori:")
                    .font(.system(size: 16, weight: .regular))
                Spacer()
                Text("340 000 UZS")
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding(.vertical)
            .padding(.horizontal, 10)
            HStack {
                Text("Yetkazib berish:")
                    .font(.system(size: 16, weight: .regular))
                Spacer()
                Text("6 000 UZS")
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding(.horizontal, 10)
            .padding(.bottom)
            Divider()
                .frame(width: UIScreen.main.bounds.width - 52, height: 1)
                .background(Color.gray.opacity(0.9))
            HStack {
                Text("Umumiy:")
                    .font(.system(size: 16, weight: .regular))
                Spacer()
                Text("346 000 UZS")
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding(.horizontal, 10)
            .padding(.vertical)
            
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

#Preview {
    BasketBalanceView()
}

