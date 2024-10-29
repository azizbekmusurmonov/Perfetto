//
//  BasketSizeView.swift
//  Basket
//
//  Created by maqsud on 29/10/24.
//

import SwiftUI

struct BasketSizeView: View {
    @State private var selectedSize: String?
    @State private var itemCount: [Int] = Array(repeating: 1, count: 3)
    private let itemPrice: Int = 28000 // Fixed price for the item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Chizburger klassic")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.black)
            
            Text("Gam bulochka, mol go'shti Patti, tuzlangan bodring, pomidor, piyoz, salat bargi, imzo sousi, Xoxland pishloq")
                .foregroundColor(.secondary)
                .lineLimit(3)
            
            Text("O'lchami")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.black)
                .padding(.top, 12)
            
            HStack {
                Button(action: {
                    selectedSize = "Classic"
                }) {
                    Text("Classic")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: selectedSize == "Classic" ? .yellow : .gray, radius: 1)
                }

                Button(action: {
                    selectedSize = "Big"
                }) {
                    Text("Big")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: selectedSize == "Big" ? .yellow : .gray, radius: 1)
                }
            }

            HStack {
                Text("\(itemCount[0] * itemPrice) so’m")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.yellow)
                
                HStack(spacing: 10) {
                    Button(action: {
                        if itemCount[0] > 1 {
                            itemCount[0] -= 1
                        }
                    }) {
                        Image(systemName: "minus")
                            .frame(width: 44, height: 44)
                            .foregroundColor(.black)
                    }
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(12)

                    Text("\(itemCount[0])") // Display the current count
                        .font(.system(size: 16, weight: .medium))

                    Button(action: {
                        itemCount[0] += 1
                    }) {
                        Image(systemName: "plus")
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                            .foregroundColor(.black)
                    }
                    .background(Color.yellow)
                    .cornerRadius(12)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .padding()
    }
}

#Preview {
    BasketSizeView()
}
