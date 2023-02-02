//
//  ContentView.swift
//  TestList
//
//  Created by labadmin on 02/02/23.
//

import SwiftUI
import Charts

struct ContentView_3: View {
    let sections: [ElementSection] = [
        ElementSection(name: "Section 1", values: ["A": 1, "B": 2]),
        ElementSection(name: "Section 2", values: ["A": 5, "B": 2, "C": 10]),
        ElementSection(name: "Section 2", values: ["A": 1, "B": 7]),
        ElementSection(name: "Section 3", values: ["A": 5, "B": 2]),
        ElementSection(name: "Section 4", values: ["A": 5, "B": 2])
    ]
    var body: some View {
        NavigationStack {
            List{
                ForEach(sections, id: \.self) { section in
                    NavigationLink(section.name, value: section)
                }
            }.navigationDestination(for: ElementSection.self) { section in
                ScrollView{
                    Chart{
                        ForEach(section.values.sorted(by: <), id: \.self.key) { item in
                            BarMark(x: .value("Key", item.key), y: .value("Value", item.value))
                        }
                    }.frame(height: 200)
                        .padding()
                    
                    Chart{
                        ForEach(section.values.sorted(by: <), id: \.self.key) { item in
                            LineMark(x: .value("Key", item.key), y: .value("Value", item.value))
                        }
                    }.frame(height: 200)
                        .padding()
                        .foregroundColor(Color.red)
                    
                    Chart{
                        ForEach(section.values.sorted(by: <), id: \.self.key) { item in
                            AreaMark(x: .value("Key", item.key), y: .value("Value", item.value))
                        }
                    }.frame(height: 200)
                        .padding()
                        .foregroundColor(Color.yellow)
                }
            }
        }
    }
}

struct ElementSection: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let values: [String: Int]
}

struct ContentView_3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_3()
    }
}
