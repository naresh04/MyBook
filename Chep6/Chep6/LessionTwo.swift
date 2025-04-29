//
//  LessionTwo.swift
//  Chep6
//
//  Created by naresh chouhan on 4/29/25.
//

import SwiftUI

struct LessionTwo: View {
    var body: some View {
        VStack{
            Grid{
                GridRow {
                    Image(systemName: "umbrella")
                    Image(systemName: "cloud")
                    Image(systemName: "heart")
                }
                Divider()
                GridRow{
                    Image(systemName: "hand.wave")
                    Image(systemName: "arrow.left")
                    Image(systemName: "arrow.left")
                }
                Divider()
                GridRow{
                    Image(systemName: "arrow.down")
                    Image(systemName: "arrow.up")
                    Image(systemName: "arrow.right")
                }
            }
            .foregroundColor(.red)
            Text("A Grid with Dividers and images")
            .foregroundColor(.secondary)
        }.padding()
    }
}

#Preview {
    LessionTwo()
}
