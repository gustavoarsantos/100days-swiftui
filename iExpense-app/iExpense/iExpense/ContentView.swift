//
//  ContentView.swift
//  iExpense
//
//  Created by Gustavo Araujo Santos on 13/04/22.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Gustavo"
    @Published var lastName = "Santos"
}

struct ContentView: View {
    @StateObject var user = User()

    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")

            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
