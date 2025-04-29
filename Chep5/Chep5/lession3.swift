//
//  lession3.swift
//  Chep5
//
//  Created by naresh chouhan on 4/28/25.
//

import SwiftUI

struct lession3: View {
    let myColors: [Color] = [.red,.orange, .yellow,.green,.blue ]
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Scroll to end") {
                    withAnimation{
                        value.scrollTo(49, anchor: .top)
                    }
                }
                .padding()
                .border(Color.blue)
                .padding()
                
                ForEach(0..<50){ i in
                    Text("Position \(i)")
                        .font(.callout)
                        .frame(width: 200, height: 70)
                        .background(myColors[i % myColors.count])
                        .id(i)
                        .border(Color.black)
                    
                }
                .padding()
                    Button("Scroll to top") {
                        withAnimation{
                            value.scrollTo(1, anchor: .bottom)
                        }
                    }
                    .padding()
                    .border(Color.blue)
                
            }
        }
        .padding()
        .border(Color.blue)
    }
}

#Preview {
    lession3()
}
