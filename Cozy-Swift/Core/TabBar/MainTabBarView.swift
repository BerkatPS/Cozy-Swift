//
//  MainTabBarView.swift
//  Cozy-Swift
//
//  Created by Berkat Saragih on 24/03/24.
//

import SwiftUI

struct MainTabBarView: View {
    
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore", systemImage: "house") }
            WishlistsView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabBarView()
}
