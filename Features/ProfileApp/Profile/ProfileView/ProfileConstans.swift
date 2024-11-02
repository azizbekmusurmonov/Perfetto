//
//  ProfileConstans.swift
//  Profile
//
//  Created by Azizbek Musurmonov   on 01/11/24.
//

import Foundation
import SwiftUICore

struct ProfileConstans {
    static let shared = ProfileConstans()
    
    let profileSection: [SectionModel] = [
        SectionModel(items: [
            SectionItemModel(leftImage: "", title: "Mening manzillarim", pushToView: AnyView(LocationView().environmentObject(LocationViewModel()))),
            SectionItemModel(leftImage: "", title: "Bildirishnomalar", pushToView: AnyView(NotificationView().environmentObject(NotificationViewModel()))),
            SectionItemModel(leftImage: "", title: "Til", pushToView: AnyView(LanguageView().environmentObject(LanguageViewModel()))),
            SectionItemModel(leftImage: "", title: "Sevimlilar", pushToView: AnyView(LikeView().environmentObject(LikeViewModel()))),
            SectionItemModel(leftImage: "", title: "Qo'llab - quvvatlash xizmati", pushToView: AnyView(HelpCenterView().environmentObject(HelpCenterViewModel())))
        ])
    ]
}
