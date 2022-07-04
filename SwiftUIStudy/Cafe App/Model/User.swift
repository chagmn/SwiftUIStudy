//
//  User.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import Foundation

struct User {
    let userName: String
    let userAccount: String
    
    static let shared = User(userName: "룰루", userAccount: "lulu")
}
