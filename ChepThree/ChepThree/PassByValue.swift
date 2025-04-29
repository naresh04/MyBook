//
//  ContentView.swift
//  ChepThree
//
//  Created by naresh chouhan on 4/28/25.
//

// Passing value at view Creation
import SwiftUI

struct PassByValue: View {
    var name:String = "Michal"

    var body: some View {
        VStack (spacing:25) {
            Text("My Name is:")
                .font(.headline)
                .fontWeight(.light)
                .padding()
            Text("\(name)")
                .font(.title)
                .fontWeight(.medium)
                .padding()
            
            Spacer()
            Text("The default name is Michal, it gets replaced in invocation")
                .foregroundColor(.red)
            
        }
        .padding()
    }
}

#Preview {
    PassByValue(name: "Peter")
}
