//
//  Lession1.swift
//  Chep5
//
//  Created by naresh chouhan on 4/28/25.
//

import SwiftUI

func validate(email: String){
    print(email)
}

struct Lession1: View {
    @State private var email: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    var body: some View {
        TextField("email adress",text: $email)
            .textFieldStyle(.roundedBorder)
            .focused($emailFieldIsFocused)
            .onSubmit {validate(email: email)}
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)
        
        Text(email)
        .foregroundColor(emailFieldIsFocused ? .blue : .gray)

    }
}

#Preview {
    Lession1()
}
