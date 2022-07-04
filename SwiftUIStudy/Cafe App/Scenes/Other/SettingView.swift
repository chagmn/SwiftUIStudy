//
//  SettingView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView()
            }
            
            Button("회원 정보 수정") {}
                .accentColor(.black)
            Button("회원 탈퇴") {}
                .accentColor(.black)
        }
        .navigationTitle("설정")
        .listStyle(.grouped)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 4) {
                Text(User.shared.userName)
                    .font(.title)
                Text(User.shared.userAccount)
                    .font(.caption)
            }
            Spacer()
            Button(action: {}) {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14, weight: .bold, design: .default))
            }
            .padding(8)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
