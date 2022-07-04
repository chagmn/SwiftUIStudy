//
//  Study MainView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct Study_MainView: View {
    
    @State private var select = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink("1. Cafe App", destination: MainView())
            }
            .navigationTitle("")
        }
    }
}

struct Study_MainView_Previews: PreviewProvider {
    static var previews: some View {
        Study_MainView()
    }
}
