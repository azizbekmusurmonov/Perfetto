//
//  HomeView.swift
//  Home
//
//  Created by Azizbek Musurmonov   on 24/08/24.
//

import SwiftUI

public struct HomeView: View {
    @State private var text: String = ""

    public init() { }

    public var body: some View {
        VStack {
            Button(action: {
                // Your action here
            }) {
                HStack(spacing: 30) {
                    Text("Toshkent sh, Mirabad tumani, Shaxrisabz...")
                        .foregroundColor(.black)
                        .font(.system(size: 16))

                    Image(systemName: "chevron.down")
                        .frame(width: 24, height: 24)
                        .foregroundColor(.black)
                }
            }
            
            HStack(spacing: 0) {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray.opacity(0.9))

                TextField("Qidirish", text: $text)
                    .padding()
                    .frame(height: 44)
                    .padding(.trailing)
            }
            .background(Color.gray.opacity(0.3))
            .cornerRadius(10)
            .padding(.horizontal)
            
            // ScrollView with gray background
            ZStack {
                Color.gray.opacity(0.1) // Set the background color here
                    .edgesIgnoringSafeArea(.all) // Ignore safe area if needed
                ScrollView {
                    VStack(alignment: .leading) {
                        // Horizontal ScrollView 1
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<10) { index in
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(color(for: index))
                                        .frame(width: 354, height: 159.4)
                                        .padding(.top)
                                }
                            }
                            .padding(.horizontal)
                        }

                        // Horizontal ScrollView 2
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<10) { index in
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .fill(.white)
                                        .frame(width: 81, height: 85)
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        // Header
                        Text("Burgerlar")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.horizontal)
                        
                        // Vertical ScrollView
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0..<10) { rowIndex in
                                    HStack {
                                        ForEach(0..<2) { columnIndex in
                                            RoundedRectangle(cornerRadius: 10.0)
                                                .fill(.white)
                                                .frame(width: (UIScreen.main.bounds.width / 2) - 21, height: 238)
                                                .overlay(
                                                    VStack{
                                                        Spacer()
                                                        Button(action: {
                                                            // Your action here
                                                        }) {
                                                            HStack(spacing: 10) {
                                                                Image(systemName: "plus")
                                                                    .frame(width: 5, height: 5)
                                                                    .foregroundColor(.black)
                                                                Text("Savatga")
                                                                    .foregroundColor(.black)
                                                                    .font(.system(size: 16))
                                                            }
                                                            .frame(width:(UIScreen.main.bounds.width / 2) - 42 , height: 40)
                                                            .background(Color.gray.opacity(0.2))
                                                            .cornerRadius(8)
                                                            .padding(.bottom, 10)
                                                            
                                                        }
                                                    }
                                                )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
    
    private func color(for index: Int) -> Color {
        // Generate different colors based on the index
        let colors: [Color] = [
            .red, .blue, .green, .orange, .purple, .pink, .yellow, .cyan, .brown, .teal
        ]
        return colors[index % colors.count]
    }
}

#Preview {
    HomeView()
}
