//
//  SectionModel.swift
//  Profile
//
//  Created by Azizbek Musurmonov   on 01/11/24.
//

import Foundation
import UIKit
import SwiftUICore

public struct SectionModel {
    let items: [SectionItemModel]
}

public struct SectionItemModel {
    let leftImage: String
    let title: String
    let pushToView: AnyView
}
