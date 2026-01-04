//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 22/12/25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    // MARK: Design
    private typealias OFGradient = OFColors.Gradient
    
    // MARK: - Body
    
    var body: some View {
        
        TabView {
            
            BookCoverPage()
            TextPage()
            PicturePage()
        }
        .background(Gradient(colors: OFGradient.gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
