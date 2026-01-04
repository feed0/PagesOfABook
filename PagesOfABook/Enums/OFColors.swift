//
//  OFColors.swift
//  OnboardingFlow
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 02/01/26.
//

import SwiftUI

public struct OFColors {
    
    public struct SolidColor {
        
        /// .black
        static let black: Color = .black
        
        /// .white
        static let white: Color = .white
        
        /// .blue
        static let blue: Color = .blue
        
        /// .tint
        static let tint: TintShapeStyle = .tint
    }
    
    // MARK: - Gradient

    public struct Gradient {
        
        // MARK: All gradient colors
        /// All gradient colors
        /// [.gradientTop, .gradientBottom]
        static let gradientColors: [Color] = [.gradientTop, .gradientBottom]
        
        // MARK: Individual gradient colors
        /// .gradientTop
        static let top: Color = .gradientTop
        
        /// .gradientBottom
        static let bottom: Color = .gradientBottom
    }
}
