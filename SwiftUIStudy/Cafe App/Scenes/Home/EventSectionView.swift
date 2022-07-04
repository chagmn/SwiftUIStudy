//
//  EventSectionView.swift
//  SwiftUIStudy
//
//  Created by ChangMin on 2022/07/04.
//

import SwiftUI

struct EventSectionView: View {
    @Binding var events: [Event]
    
    var body: some View {
        VStack {
            HStack {
                Text("Events")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("See all")
                        .font(.subheadline)
                        .foregroundColor(.green)
                })
            }
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(events) { event in
                        EventSectionItemView(event: event)
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 220, maxHeight: .infinity)
                .padding(.horizontal, 16)
            }
        }
        
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
            
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
                .foregroundColor(.primary)
            
            Text(event.description)
                .lineLimit(1)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .font(.callout)
                .foregroundColor(.primary)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
}

//struct EventSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        EventSectionView()
//    }
//}
