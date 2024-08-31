//
//  BlurView.swift
//  Core
//
//  Created by Azizbek Musurmonov   on 24/08/24.
//

import SwiftUI

public struct Blur: UIViewRepresentable {
    public var style: UIBlurEffect.Style = .systemMaterial
    
    public init(style: UIBlurEffect.Style) {
        self.style = style
    }
    
    public func makeUIView(context: Context) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        return visualEffectView
    }
    
    public func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}
