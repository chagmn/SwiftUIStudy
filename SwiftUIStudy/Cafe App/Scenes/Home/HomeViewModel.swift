//
//  HomeViewModel.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload: Bool = false {
        didSet {
            guard isNeedToReload else { return }
            
            coffeeMenu.shuffle()
            events.shuffle()
            
            isNeedToReload = false
        }
    }
    
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "드립커피"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 드립커피")
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 메뉴가 출시되었습니다!!"),
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "더울 땐 아이스커피 :)")
    ]
}
