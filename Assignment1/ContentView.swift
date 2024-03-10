//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ListItem()
        }
    }
}

struct ListItem: View {
    func addItem() {
        print("add Item")
    }
    
    func deleteItem() {
        print("delete Item")
    }
    
    var body: some View {
        HStack {
            Text("😎")
            Text("Counter: 3")
            Spacer()
            Button(action: addItem) {
                Image(systemName: "plus.circle")
                    .imageScale(.large)
                    .foregroundColor(.green)
            }
            Button(action: deleteItem) {
                Image(systemName: "minus.circle")
                    .imageScale(.large)
                    .foregroundColor(.red)
            }
        }
        .padding(6)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
