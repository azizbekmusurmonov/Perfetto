//
//  SegmentedView.swift
//  Order
//
//  Created by maqsud on 24/10/24.
//

import SwiftUI

struct SegmentedView: View {
    @State private var selectedSegment = 0
    var body: some View {
            VStack {
                Picker("Select an option", selection: $selectedSegment) {
                    Text("Faol buyurtmalar").tag(0)
                    Text("Buyurtmalar tarixi").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .scaleEffect(1.5)
                .frame(width: 280)
                ScrollView{
                    if selectedSegment == 0 {
                        ActiveOrderView()
                    } else {
                        OrderHistoryView()
                    }
                }
        }
    }
}

#Preview {
    SegmentedView()
}
