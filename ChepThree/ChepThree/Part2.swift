//
//  Part2.swift
//  ChepThree
//
//  Created by naresh chouhan on 4/28/25.
//

/*
 What is the Property Wrapper : Property wrapper are logic code fregment, which are executed when ever set or get is executed on the peoperty.
 So when ever you do somthing ti that variable the corresponding propery wrapper will be invoked
 
 @STATE:
    1. it tells swiftUI that the value should be persisted and not reset to its initial value when view gets redrawn
    2. it tells swiftUI that a property's value is allowed to change
    3. 
 
 
 
 */

import SwiftUI

struct Part2: View {
   
    var body: some View {
        MyViewStrcut()
    }
}
struct MyViewStrcut:View {
    @State var name:String = "Mary"
    var body: some View {
        VStack(spacing:20){
            Text("Variables in struct immutable")
                .fontWeight(.heavy)
            Text("Name" + name)
            Button(action: {
                print("Button Presses")
                self.name = "John"
            }){
                Text("Press This button")
            }
            .padding()
            .border(.blue)
        }
    }
}

#Preview {
    Part2()
}
