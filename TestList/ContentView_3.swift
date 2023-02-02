//
//  ContentView.swift
//  TestList
//
//  Created by labadmin on 02/02/23.
//

import SwiftUI

struct ContentView_3: View {
    let sections: [ElementSection] = [
        ElementSection(name: "Section 1"),
        ElementSection(name: "Section 2"),
        ElementSection(name: "Section 2"),
        ElementSection(name: "Section 3"),
        ElementSection(name: "Section 4")
    ]
    var body: some View {
        NavigationStack {
            List{
                ForEach(sections, id: \.self) { section in
                    NavigationLink(section.name, value: section)
                }
            }.navigationDestination(for: ElementSection.self) { section in
                Text(section.name)
            }
        }
    }
}

struct ElementSection: Hashable {
    let id = UUID()
    let name: String
}

struct ContentView_3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_3()
    }
}
