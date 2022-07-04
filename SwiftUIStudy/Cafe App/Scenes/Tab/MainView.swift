//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.tabTextItem
                }
            Text("Other")
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.tabTextItem
                }
        }
        .foregroundColor(.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
