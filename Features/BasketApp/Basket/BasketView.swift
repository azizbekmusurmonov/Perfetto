//
//  BasketView.swift
//  Basket
//
//  Created by Azizbek Musurmonov   on 24/08/24.
//

import SwiftUI

public struct BasketView: View {
    
    public init() { }
    
    public var body: some View {
            Text("Savat")
            .font(.system(size: 24, weight: .bold))
        ZStack{
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    BasketItemView()
                        .padding(.top)
                    BasketBalanceView()
                    BasketButtonView()
                    
                    Spacer()
                    
                }
            }
        }
    }
}

#Preview {
    BasketView()
}
