//
//  TextPage.swift
//  OnboardingFlow
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 01/01/26.
//

import SwiftUI

struct TextPage: View {
    
    // MARK: - Properties
    
    // MARK: Design
    private typealias OFSpacing = OFSizes.Spacing
    
    // MARK: - Body
    
    var body: some View {
        Group {
            capitalLetterBoxText
            + paragraphsText
        }
        .padding(OFSpacing.extraLarge)
        
    }
    
    // MARK: - ViewBuilder
    
    private var capitalLetterBoxText: Text {
        Text("E")
            .font(.system(size: OFFonts.Size.extraLarge))
            .fontWeight(.black)
    }
    
    private var paragraphsText: Text {
        Text("""
            t en fin, le Petit Prince a aprivoisé son ami: le Renard.

            Le renard lui dit qu'ils peuvent être amis si le prince prend le temps de l'apprivoiser. Apprivoiser, ça veut dire qu'ils vont s'aimer et être spéciaux l'un pour l'autre.

            Le renard dit : « Tu deviens responsable de ce que tu apprivoises. » Cela veut dire que quand tu te soucies de quelqu'un, il est important pour toi.

            Le petit prince apprend que l'amitié, c'est être ensemble et créer un lien. À la fin, le prince réalise que le renard est spécial pour lui parce qu'ils ont pris le temps d'être amis. C'est super chouette d'avoir des amis !
            """)
    }
}

// MARK: - Preview

#Preview {
    
    typealias OFGradientColor = OFColors.Gradient
    typealias OFSolidColor = OFColors.SolidColor
    
    return TextPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: OFGradientColor.gradientColors))
        .foregroundStyle(OFSolidColor.white)
}
