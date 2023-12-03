//
//  ContentView.swift
//  ShowchatHomepage
//
//  Created by Stupid on 11/24/23.
//

import SwiftUI

struct HomePage: View {
    let searchBarHeightPercentage: CGFloat = 0.08
    let tooltipHeightPercentage: CGFloat = 0.22
    let carouselHeightPercentage: CGFloat = 0.60
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack(spacing: 0) {
                    SearchBar()
                        .frame(height: geometry.size.height * searchBarHeightPercentage)
                    
                    Tooltip()
                        .frame(height: geometry.size.height * tooltipHeightPercentage)
                    
                    Carousel()
                        .frame(height: geometry.size.height * carouselHeightPercentage)
                }
            }
        }
    }
}

#Preview {
    HomePage()
}
