//
//  ContentView.swift
//  Chep6
//
//  Created by naresh chouhan on 4/29/25.
//
// Display Grid

import SwiftUI

struct LessionOne: View {
    var body: some View {
        VStack {
            Grid() {
                GridRow{
                    Text("[R1, C1]")
                    Text("[R1, C2]")
                }
                GridRow {
                    Text("[R2, C1]")
                    Text("[R2, C2]")
                }
                GridRow {
                    Text("[R3, C1]")
                    Text("[R3, C2]")
                }
                
            }
            Text("A Grid containing GridRows")
            .foregroundColor(.secondary)
        }
        
    }
}

#Preview {
    LessionOne()
}
