//
//  MenuSuggestionSectionView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    @Binding var coffeeMenu: [CoffeeMenu]
    
    var body: some View {
        VStack {
            Text("\(User.shared.userName)님을 위한 추천메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(coffeeMenu) { menu in
                        MenuSuggestionItemView(coffeeMenu: menu)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu
    
    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                
            Text(coffeeMenu.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}
//
//struct MenuSuggestionSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuSuggestionSectionView()
//    }
//}
