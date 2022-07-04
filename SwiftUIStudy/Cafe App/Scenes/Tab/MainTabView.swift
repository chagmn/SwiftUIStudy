//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.tabTextItem
                }
                .navigationBarHidden(false)
            OtherView()
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.tabTextItem
                }
                .navigationBarHidden(true)
        }
        .foregroundColor(.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
