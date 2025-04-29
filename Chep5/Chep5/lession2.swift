//
//  lession2.swift
//  Chep5
//
//  Created by naresh chouhan on 4/28/25.
//

import SwiftUI

struct lession2: View {
    var body: some View {
        VStack{
            Text("A horizontal ScrollView")
                .font(.title)
            ScrollView([.horizontal],showsIndicators: false){
                HStack(alignment: .center) {
                    ForEach(0..<100) {
                        Text("[Column \($0)]")
                        .background(Color.yellow)
                    }
                }
            }
        }
    }
}

#Preview {
    lession2()
}
