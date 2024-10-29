//
//  BasketDetailsView.swift
//  Basket
//
//  Created by maqsud on 26/10/24.
//

import SwiftUI

struct BasketDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showBasketDetails = false
    
    var body: some View {
        VStack {
            ImageView()
                .overlay {
                    VStack {
                        HStack {
                            Button(action: {
                                // Go back to the previous view
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Image(systemName: "chevron.left")
                                    .padding(.all, 10)
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                            .padding(.all, 12)
                            
                            Spacer()
                            
                            Button(action: {
                                // Action for the heart button
                            }) {
                                Image(systemName: "heart")
                                    .padding(.all, 10)
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                            .padding(.all, 12)
                        }
                        Spacer()
                    }
                }
            
            BasketSizeView()
                .padding(.bottom, 97)
            BasketButtonView(buttonText: "Savatga qo'shish")
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    BasketDetailsView()
}
