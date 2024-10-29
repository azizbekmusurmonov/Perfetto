//
//  ImageView.swift
//  Basket
//
//  Created by maqsud on 26/10/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Spacer()
            
            
        }
        .frame(width: 353, height: 238)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
        .overlay {
            Image(systemName: "house")
                .resizable()
                .frame(width: 277, height: 214)
        }

    }
}

#Preview {
    ImageView()
}
