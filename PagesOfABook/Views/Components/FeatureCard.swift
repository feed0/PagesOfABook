//
//  FeatureCard.swift
//  OnboardingFlow
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 01/01/26.
//

import SwiftUI

struct FeatureCard: View {
    
    // MARK: - Properties
    
    let iconName: String
    let description: String
    
    // MARK: Design
    private typealias OFRadius = OFSizes.Radius
    private typealias OFSolidColor = OFColors.SolidColor
    private typealias OFSpacing = OFSizes.Spacing
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            
            iconImage
                .frame(width: OFSpacing.extraLarge)
                .padding(.trailing, OFSpacing.small)
            
            descriptionText
            
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: OFRadius.regular)
                .foregroundStyle(OFSolidColor.tint)
                .opacity(0.25)
                .brightness(-0.25)
        }
        .foregroundStyle(OFSolidColor.white)
    }
    
    // MARK: - ViewBuilder
    
    private var iconImage: some View {
        Image(systemName: iconName)
            .font(.largeTitle)
    }
    
    private var descriptionText: some View {
        Text(description)
    }
}

// MARK: - Preview

#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill",
                description: "A multiline description about a feature paired with the image on the left.")
}
