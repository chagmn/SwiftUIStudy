//
//  CoffeeMenu.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let image: Image
    let name: String
    let id = UUID()

    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "드립커피"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 드립커피")
    ]
}
