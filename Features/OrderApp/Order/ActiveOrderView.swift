//
//  ActiveOrderView.swift
//  Order
//
//  Created by maqsud on 24/10/24.
//

import SwiftUI

struct ActiveOrderView: View {
    var body: some View {
        VStack{
            VStack (alignment: .center){
                HStack(spacing: 97){
                    Text("Buyurtma ID: 013482")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.top)
                    
                    Text("340 000 so’m")
                        .font(.system(size: 16, weight: .semibold))
                    
                }
                .padding(.horizontal)
                .padding(.bottom, 10)
                HStack(spacing: 201){
                    Text("3ta buyurtma")
                        .font(.system(size: 14))
                        .foregroundColor(.gray.opacity(0.9))
                    
                    Text("03.03.2024")
                        .font(.system(size: 14))
                        .foregroundColor(.gray.opacity(0.9))
                }
                .padding(.horizontal)
                
                Divider()
                    .frame(width: UIScreen.main.bounds.width - 32, height: 1) // Kenglikni 50 pt ga kamaytirish
                    .background(Color.gray.opacity(0.1))
                    .padding()
                
                HStack{
                    Image(systemName: "plus")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.yellow.opacity(0.9))
                        .cornerRadius(24)
                    ForEach(0..<3) { _ in
                        Divider()
                            .frame(width: 5, height: 2)
                            .background(Color.yellow.opacity(0.9))
                    }
                    Image(systemName: "plus")
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(32)
                    ForEach(0..<3) { _ in
                        Divider()
                            .frame(width: 6, height: 1)
                            .background(Color.gray.opacity(0.9))
                    }
                    Image(systemName: "plus")
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(32)
                    ForEach(0..<3) { _ in
                        Divider()
                            .frame(width: 5, height: 1)
                            .background(Color.gray.opacity(0.9))
                    }
                    Image(systemName: "plus")
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(32)
                    
                }
            }
            HStack(spacing: 0) { // Orasidagi joyni olib tashlash
                Text("Qabul qilish")
                    .padding(.leading) // Faqat birinchi matn uchun padding
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 15))
                
                ForEach(["Tayyor", "Yo'lda", "Yetib keldi"], id: \.self) { text in
                    Text(text)
                        .lineLimit(1)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 15))
                }
            }
            Button(action: {
            }) {
                Text("Batafsil")
                    .foregroundColor(.black)
                    .frame(width: UIScreen.main.bounds.width - 32 , height: 59)
                    .background(Color.yellow) // Fon rangini sariq qilib belgilash
                    .cornerRadius(10) // Burchaklarini yumshatish
            }
            .padding()
            
            
        }
        .background(Color.white)
    }
}
#Preview {
    ActiveOrderView()
}
