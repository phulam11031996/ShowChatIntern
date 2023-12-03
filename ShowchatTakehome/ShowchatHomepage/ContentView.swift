//
//  ContentView.swift
//  ShowchatHomepage
//
//  Created by Stupid on 11/24/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack {
            SearchBar()
            Carousel()
        }
        .background(Color.black) // Set your desired background color
    }
}

#Preview {
    HomePage()
}
