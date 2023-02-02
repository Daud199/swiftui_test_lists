//
//  ContentView.swift
//  TestList
//
//  Created by labadmin on 02/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                Text("Element 1")
                Text("Element 2")
                Text("Element 3")
                Text("Element 4")
            }
            .navigationTitle("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
