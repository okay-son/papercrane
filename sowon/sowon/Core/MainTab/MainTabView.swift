//
//  MainTabView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    let gradient = LinearGradient(gradient: Gradient(colors: [.aquablue, .greenblue]), startPoint: .bottom, endPoint: .top)
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "aquablue")
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(named: "greenblue")
    }
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "bell")
                }.tag(2)
            
            ProfileView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "person.fill")
                }.tag(3)
        }
        .accentColor(.white)
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

