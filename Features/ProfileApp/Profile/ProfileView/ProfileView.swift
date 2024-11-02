//
//  ProfileView.swift
//  Profile
//
//  Created by Azizbek Musurmonov   on 31/08/24.
//

import SwiftUI
import Core
import AssetKit

public struct ProfileView: View {
    
    public init() { }
    
    public var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Profil")
                    .font(.system(size: 24, weight: .semibold))
                
                ScrollView {
                    VStack {
                        NavigationLink(destination: EditProfileView()) {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Mokhinur Kuzibayeva")
                                        .font(.system(size: 20, weight: .semibold))
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("+998 91 234 56 78")
                                        .font(.system(size: 16, weight: .regular))
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .frame(height: 50)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        }
                        
                        ProfileSectionView()
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color.secondary)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
