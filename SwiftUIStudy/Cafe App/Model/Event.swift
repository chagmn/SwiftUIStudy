//
//  Event.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 메뉴가 출시되었습니다!!"),
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "더울 땐 아이스커피 :)")
    ]
}
