//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by tyler on 3/11/23.
//

import SwiftUI

var values = values_3
struct ContentView: View {
    var solution = findOverlap(&values)
    var body: some View {
        NavigationView {
            Form {
                Section {
                    List {
                        ForEach(values) { coordinate in
                            Text("x: \(coordinate.x), y: \(coordinate.y)")
                        }
                    }
                } header: {
                    Text("Initial List")
                }
                Section {
                    List {
                        ForEach(solution) { coordinate in
                            Text("x: \(coordinate.x), y: \(coordinate.y)")
                        }
                    }
                } header: {
                    Text("Solution List")
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

