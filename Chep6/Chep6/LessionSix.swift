//
//  LessionSix.swift
//  Chep6
//
//  Created by naresh chouhan on 4/29/25.
//

import SwiftUI

struct LessionSix: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 100))],alignment: .top){
                ForEach(1...300,id:\.self){ I in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.cyan)
                        .frame(width: 60, height: 60)
                    
                }
            }
        }.padding()
    }
}

#Preview {
    LessionSix()
}
