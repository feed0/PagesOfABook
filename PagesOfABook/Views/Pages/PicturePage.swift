//
//  PicturePage.swift
//  OnboardingFlow
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 01/01/26.
//

import SwiftUI

struct PicturePage: View {
    
    // MARK: - Properties
    
    // MARK: Design
    private typealias OFSpacing = OFSizes.Spacing
    private typealias OFRadius = OFSizes.Radius
    private typealias OFSolidColor = OFColors.SolidColor
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: OFSpacing.large) {
            
            friendsImage
            imageSourceText
        }
        .padding()
    }
    
    // MARK: - ViewBuilder
    
    private var friendsImage: some View {
        Image("Le Petit Prince et son ami: le Renard")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: OFRadius.large))
            .shadow(color: OFSolidColor.black,
                    radius: OFRadius.regular)
            .shadow(color: OFSolidColor.white,
                    radius: OFRadius.small)
    }
    
    private var imageSourceText: some View {
        Link("Singulart: Antoine de Saint Exupéry le petit prince et son ami le renard",
             destination: URL(string: "https://www.singulart.com/es/obras-de-arte/antoine-de-saint-exupéry-le-petit-prince-et-son-ami-le-renard-1941960")!)
        .underline()
    }
}

// MARK: - Preview

#Preview {
    
    typealias OFGradientColor = OFColors.Gradient
    typealias OFSolidColor = OFColors.SolidColor
    
    return PicturePage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: OFGradientColor.gradientColors))
        .foregroundStyle(OFSolidColor.white)
}
