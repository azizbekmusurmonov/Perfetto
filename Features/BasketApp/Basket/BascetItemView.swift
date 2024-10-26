//
//  BascetItemView.swift
//  Basket
//
//  Created by maqsud on 25/10/24.
//

import SwiftUI

struct BasketItem: Identifiable {
    let id = UUID()
    let name: String
    let price: String
}

struct BasketItemView: View {
    @State private var itemCount: [Int] = Array(repeating: 1, count: 3) // Adjust count for three items

    var items = [
        BasketItem(name: "Chizburber", price: "28000"),
        BasketItem(name: "Pizza", price: "30000"),
        BasketItem(name: "Soda", price: "5000")
    ]

    var body: some View {
        VStack {
            ForEach(items.indices, id: \.self) { index in
                HStack {
                    Image(systemName: "house")
                        .frame(width: 70, height: 70)
                        .background(Color.gray)
                        .cornerRadius(12)
                        .padding(.all, 10)
                    
                    VStack(alignment: .leading , spacing: 8) {
                        Text(items[index].name)
                            .font(.system(size: 16, weight: .semibold))
                        Text("\(calculateTotalPrice(for: index)) UZS")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.yellow)
                    }
                    Spacer()

                    HStack(spacing: 8) {
                        Button(action: {
                            if itemCount[index] > 1 {
                                itemCount[index] -= 1
                            }
                        }) {
                            Image(systemName: "minus")
                                .scaledToFit()
                                .frame(width: 36, height: 36)
                                .foregroundColor(.black)
                        }
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)

                        Text("\(itemCount[index])")
                            .font(.system(size: 16, weight: .medium))

                        Button(action: {
                            itemCount[index] += 1
                        }) {
                            Image(systemName: "plus")
                                .scaledToFit()
                                .frame(width: 36, height: 36)
                                .foregroundColor(.black)
                        }
                        .background(Color.yellow)
                        .cornerRadius(12)
                        .padding(.trailing, 10)
                    }
                }
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal)
            }
        }
    }
    
    private func calculateTotalPrice(for index: Int) -> String {
        let price = Int(items[index].price) ?? 0
        let totalPrice = price * itemCount[index]
        return "\(totalPrice)"
    }
}

#Preview {
    BasketItemView()
}
