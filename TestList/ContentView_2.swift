//
//  ContentView.swift
//  TestList
//
//  Created by labadmin on 02/02/23.
//

import SwiftUI

struct ContentView_2: View {
    let elements: [Element] = [
        Element(name: "Element 1"),
        Element(name: "Element 2"),
        Element(name: "Element 3"),
        Element(name: "Element 4")
    ]
    let items: [Item] = [
        Item(name: "Item 1"),
        Item(name: "Item 2"),
        Item(name: "Item 3"),
        Item(name: "Item 4"),
    ]
    var body: some View {
        NavigationStack{
            List{
                Section("Elements"){
                    ForEach(elements, id: \.name) {el in
                        Text(el.name)
                    }
                }
                Section("Items"){
                    ForEach(items, id: \.name) {itm in
                        Text(itm.name)
                    }
                }
            }
            .navigationTitle("Menu")
        }
    }
}

struct Element{
    let name: String
}

struct Item {
    let name: String
}

struct ContentView_2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_2()
    }
}
