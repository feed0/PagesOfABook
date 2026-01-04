//
//  BookCoverPage.swift
//  OnboardingFlow
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 04/01/26.
//

import SwiftUI

struct BookCoverPage: View {
    
    // MARK: - Properties
    
    // MARK: Design
    private typealias OFRadius = OFSizes.Radius
    private typealias OFSolidColor = OFColors.SolidColor
    private typealias OFSpacing = OFSizes.Spacing
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: OFSpacing.large) {
            
            bookIcon
            bookTitleText
            descriptionText
        }
        .padding(OFSpacing.small)
    }
    // MARK: - ViewBuilder
    
    private var bookIcon: some View {
        ZStack {
            RoundedRectangle(cornerRadius: OFRadius.large)
                .frame(width: 150, height: 150)
                .foregroundStyle(OFSolidColor.tint)
            
            Image(systemName: "a.book.closed.fill")
                .font(.system(size: 70))
                .foregroundStyle(OFSolidColor.white)
        }
    }
    
    private var bookTitleText: some View {
        Text("Le Petit Prince")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .fontWidth(.expanded)
            .fontDesign(.serif)
    }
    
    private var descriptionText: some View {
        Text("Écrit par Antoine de Saint-Exupéry")
            .font(.title2)
            .multilineTextAlignment(.center)
    }
}

// MARK: - Preview

#Preview {
    BookCoverPage()
}
