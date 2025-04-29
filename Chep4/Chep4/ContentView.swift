//
//  ContentView.swift
//  Chep4
//
//  Created by naresh chouhan on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isSwitchOn:Bool = false
    var body: some View {
        VStack {
            Text("Switch is \(isSwitchOn ? "ON" : "OFF")")
            Toggle("Switch", isOn: $isSwitchOn )
            
            ChildView(isOn: $isSwitchOn)
        }
        
        .padding()
    }
}

struct ChildView:View {
    @Binding var isOn:Bool
    var body: some View {
        Toggle("Switch", isOn: $isOn )
    }
}
#Preview {
    ContentView()
}
