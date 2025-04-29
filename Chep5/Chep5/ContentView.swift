//
//  ContentView.swift
//  Chep5
//
//  Created by naresh chouhan on 4/28/25.
//
/*
 1. Iterating views
 2. Hiding or showing the keyboard in a form using @FocusState
 3. @SwiftUIBuilder and the limit of only 10 views
 4. Controlling scrolling programmatically using ScrollViewReader
 */

import SwiftUI

private struct Person: Identifiable {
    let name: String
    let surname: String
    var id: UUID { UUID() }
}

private let people :[Person] = [
    Person(name: "John", surname: "Ross"),
    Person (name: "Jinny", surname: "White"),
    Person (name: "Susan", surname: "Brown"),
    Person (name: "Mike", surname: "Sander"),
    Person (name: "Tina", surname: "Russel"),
    Person (name: "Jonathan", surname: "Sparrow")
]


struct ContentView: View {
    var body: some View {
        
        NavigationView  {
            MyCustomContainer{
                Text("This is inside the custom container!")
                Text("Another View here.")
                Text("Another View here.")
                Button("Tap me") {
                    print("Button tapped!")
                }
            }
            List {
                ForEach(people) { person in
                    HStack{
                        Text(person.name)
                        Text(person.surname)
                    }
                }
            }
            .navigationTitle("People list")
        }
        
    }
}

#Preview {
    ContentView()
}
