//
//  OrderHistoryView.swift
//  Order
//
//  Created by maqsud on 24/10/24.
//

import SwiftUI

struct Order: Identifiable {
    let id: String
    let orderID: String
    let amount: String
    let itemCount: String
    let date: String
}

struct OrderHistoryView: View {
    let orders: [Order] = [
        Order(id: "1", orderID: "013482", amount: "340 000 so’m", itemCount: "3ta buyurtma", date: "03.03.2024"),
        Order(id: "2", orderID: "013483", amount: "450 000 so’m", itemCount: "2ta buyurtma", date: "04.03.2024"),
        Order(id: "3", orderID: "013484", amount: "250 000 so’m", itemCount: "1ta buyurtma", date: "05.03.2024"),
        Order(id: "4", orderID: "013485", amount: "150 000 so’m", itemCount: "8ta buyurtma", date: "06.03.2024")
    ]
    
    var body: some View {
        VStack {
            headerView(title: "Mart")
            ForEach(orders) { order in
                orderRow(order: order)
            }
        }
        .background(Color.white)
        .padding(.bottom, 6)
        
        VStack {
            headerView(title: "Fevral")
            ForEach(orders) { order in
                orderRow(order: order)
            }
        }
        .background(Color.white)
        
    }
    
    private func headerView(title: String) -> some View {
        HStack {
            Divider()
                .frame(width: UIScreen.main.bounds.width / 2.9, height: 1)
                .background(Color.gray.opacity(0.9))
            
            Text(title)
            
            Divider()
                .frame(width: UIScreen.main.bounds.width / 2.9, height: 1)
                .background(Color.gray.opacity(0.9))
        }
        .padding(.horizontal)
        .padding(.top)
    }
    
    private func orderRow(order: Order) -> some View {
        VStack {
            HStack(spacing: 97) {
                Text("Buyurtma ID: \(order.orderID)")
                    .font(.system(size: 16, weight: .semibold))
                
                Text(order.amount)
                    .font(.system(size: 16, weight: .semibold))
            }
            .padding(.horizontal)
            .padding(.bottom, 5)
            
            HStack(spacing: 201) {
                Text(order.itemCount)
                    .font(.system(size: 14))
                    .foregroundColor(.gray.opacity(0.9))
                
                Text(order.date)
                    .font(.system(size: 14))
                    .foregroundColor(.gray.opacity(0.9))
            }
            .padding(.bottom ,6)
            Divider()
                .frame(width: UIScreen.main.bounds.width - 32, height: 1)
                .background(Color.gray.opacity(0.1))
        }
        .padding(.top, 6)
    }
}

#Preview {
    OrderHistoryView()
}
