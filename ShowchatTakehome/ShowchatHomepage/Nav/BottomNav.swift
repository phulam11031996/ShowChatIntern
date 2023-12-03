//
//  BottomNav.swift
//  ShowchatHomepage
//
//  Created by Stupid on 11/26/23.
//
import SwiftUI

struct BottomNav: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(Color.black, for: .tabBar)
            
            Navigation()
                .tabItem {
                    Label("Navigation", systemImage: "map")
                }
            
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    BottomNav()
}
