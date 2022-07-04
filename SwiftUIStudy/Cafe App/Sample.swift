//
//  Sample.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

class ButtonModel: ObservableObject {
    @Published var isDisabled: Bool = false
}

struct ParentView: View {
//    @State private var isDisabled: Bool = true
    @ObservedObject var buttonModel = ButtonModel()
    var body: some View {
        ChildView(isDisabled: $buttonModel.isDisabled)
    }
}

struct ChildView: View {
//    @State private var currentText: String = ""
    @Binding var isDisabled: Bool
    
    var body: some View {
//        VStack {
//            TextField("텍스트를 입력해주세요.", text: $currentText)
//            Text(currentText)
//        }
        
        VStack {
            Toggle("버튼을 비활성화 시키겠습니까?", isOn: $isDisabled)
            
            Button("버튼") {}
                .disabled(isDisabled)
        }
    }
}

struct Sample_Previews: PreviewProvider {
    static var previews: some View {
//        ChildView()
        ParentView()
    }
}
