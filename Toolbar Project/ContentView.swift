//
//  ContentView.swift
//  Toolbar Project
//
//  Created by Rich Polanco on 6/24/23.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    var body: some View {
        NavigationStack {
            Text("Initial View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            isPresenting = true
                        }, label: {
                            Image(systemName: "gear")
                        })
                    }
                }
                .sheet(isPresented: $isPresenting) {
                    NavigationStack {
                        Text("Settings Page")
                            .toolbar {
                                ToolbarItem {
                                    Button("Save",
                                           action: { isPresenting.toggle() })
                                }
                            }
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
