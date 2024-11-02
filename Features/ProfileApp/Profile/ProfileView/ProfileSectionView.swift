//
//  ProfileSectionView.swift
//  Profile
//
//  Created by Azizbek Musurmonov   on 01/11/24.
//

import SwiftUI

struct ProfileSectionView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            ForEach(0..<ProfileConstans.shared.profileSection.count, id: \.self) { index in
                let sections = ProfileConstans.shared.profileSection
                
                ForEach(0..<sections[index].items.count, id: \.self) { cellIndex in
                    NavigationLink(
                        destination: sections[index].items[cellIndex].pushToView, label: {
                            
                            HStack {
                                Image(systemName: "applelogo")
                                    .foregroundColor(.accentColor)
                                Text(sections[index].items[cellIndex].title)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical)
                        })
                    Divider()
                }
            }
        }
        .frame(height: 300)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    ProfileSectionView()
}
