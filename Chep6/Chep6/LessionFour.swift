//
//  LessionFour.swift
//  Chep6
//
//  Created by naresh chouhan on 4/29/25.
//Lazy Grid

import SwiftUI

struct LessionFour: View {
    var body: some View {
        ScrollView{
            LazyVGrid(columns:
                        [GridItem(.flexible()),
                         GridItem(.flexible()),
                         GridItem(.flexible()),
                         GridItem(.flexible()),]) {
            ForEach(1...300, id: \.self) { I in
            RoundedRectangle(cornerRadius: 10)
            .fill(Color.cyan)
            .frame(width: 60, height: 60)
            }
            }
        }
    }
}

#Preview {
    LessionFour()
}
