//
//  HomeHeaderView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct HomeHeaderView: View {
    @Binding var isNeedToReload: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(alignment: .top) {
                Text("""
                    \(User.shared.userName)님~
                    반갑습니다! 😀
                    """)
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)

                
                Button(action: {
                    isNeedToReload = true
                }, label: {
                    Image(systemName: "arrow.2.circlepath")
                        .foregroundColor(.green)
                })
                .frame(alignment: .top)
            }
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "mail")
                        .foregroundColor(.secondary)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16, weight: .bold, design: .default))
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "ticket")
                        .foregroundColor(.secondary)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16, weight: .bold, design: .default))
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                })
            }
        }
        .padding(16)
    }
}

//struct HomeHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeHeaderView()
//    }
//}
