//
//  Lession2.swift
//  Chep4
//
//  Created by naresh chouhan on 4/28/25.
//

import SwiftUI

struct PersonData {
    var name: String
    var surname: String
    var phone: String
}

struct ParentView:View {
    @State var person = PersonData(name: "John", surname: "Smith",
                                   phone: "555-12345")
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Spacer()
                Text("Current user profile")
                    .foregroundColor(.black)
                Text("\(person.name) \(person.surname)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                Text("\(person.phone)")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                NavigationLink(destination: Lession2(person: $person))
                {
                    Text("Edit user")
                }
                Spacer()
            }
            .font(.title)
            .navigationTitle("User profile")
            .font(.headline)
            .foregroundColor(.blue)
        }
    }
}
struct Lession2: View {
    @Binding var person: PersonData
    var body: some View {
        VStack(spacing: 20) {
            Group {
                TextField("Name", text: $person.name)
                        .textFieldStyle(.roundedBorder)
                TextField("Surname",text: $person.surname)
                    .textFieldStyle(.roundedBorder)
                TextField("Phone number",text: $person.phone)
                        .textFieldStyle(.roundedBorder)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Subview (Edit)")
    }
}



#Preview {
    
    ParentView()
    Lession2(person: Binding.constant(PersonData(
        name:"Jacob",
        surname:"Miller",
        phone: "5555444444")))
}
