//
//  HomeView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView()
            MenuSuggestionSectionView()
            Spacer(minLength: 32)
            EventSectionView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
