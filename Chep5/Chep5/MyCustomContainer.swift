//
//  MyCustomContainer.swift
//  Chep5
//
//  Created by naresh chouhan on 4/28/25.
//

import SwiftUI

struct MyCustomContainer<Content: View>:View {
    
    let content: Content
    init(@ViewBuilder content: () -> Content) {
            self.content = content()
        }
    
    var body: some View {
        VStack {
                Text("Naresh Chouhan")
                    .font(.headline)
                content
                    Text("Manisha Chouhan")
                        .font(.footnote)
                }
                .padding()
    }
    
    
}


