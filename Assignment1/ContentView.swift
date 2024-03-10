//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    
    let emojis = ["🌮", "🥪", "🍕", "🥗", "🌭"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(emojis, id: \.self) { emoji in
                    ListItem(emoji: emoji)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct ListItem: View {
    let emoji : String
    @State var counter : Int = 0
    
    func addItem() {
        print("add Item")
        counter += 1
        print(counter)
    }
    
    func deleteItem() {
        print("delete Item")
        counter -= 1
        print(counter)
    }
    
    var body: some View {
        HStack {
            Text("\(emoji)")
            Text("Counter: \(counter)")
            Spacer()
            Button(action: addItem) {
                Image(systemName: "plus.circle")
                    .imageScale(.large)
                    .foregroundColor(.green)
            }
            .buttonStyle(.borderless)
            Button(action: deleteItem) {
                Image(systemName: "minus.circle")
                    .imageScale(.large)
                    .foregroundColor(.red)
            }
            .buttonStyle(.borderless)
        }
        .padding(6)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
