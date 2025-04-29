//
//  Part3.swift
//  ChepThree
//
//  Created by naresh chouhan on 4/28/25.
//

import SwiftUI

struct Part3: View {
    @State private var toggleState = false
    var body: some View {
        ZStack {
            Color(toggleState ? .lightGray : .orange)
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                        Text("in this example, we use a toggle with a binding variable.")
                            Spacer()
                    Toggle(isOn: $toggleState) {
                        Text("This toggle state is: \(toggleState ? "ON" : "OFF")")
                    }
                    .padding(.horizontal)
                    Spacer()
                    Text("This text box appearance is also affected when the toggle is switched on or off")
                            .fontWeight(toggleState ? .semibold : .light)
                            .multilineTextAlignment(toggleState ? .trailing :
                                    .leading)
                            .padding()
                            .background(toggleState ? Color.yellow : Color.pink)
                    Spacer()
                    Text("Actually, the whole view gets redrawn when we switch the toggle")
                    Text("We can use modifiers to change the appearance dynamically based on state variables")
                            .font(.body)
                            .padding()
                }
        }
    }
}

#Preview {
    Part3()
}
