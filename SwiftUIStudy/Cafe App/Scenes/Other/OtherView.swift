//
//  OtherView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct OtherView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section(
                        header: Text(section.title)
                            .foregroundColor(.secondary)
                            
                    ) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            Text(raw)
                                .foregroundColor(.primary)
                        }
                    }
                    
                }
            }
//            .listStyle(.grouped)
            .navigationTitle("Other")
            .toolbar {
                NavigationLink(destination: SettingView(), label: {
                    Image(systemName: "gear")
                        .foregroundColor(.green)
                })
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
