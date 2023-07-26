//
//  NewNavigationDestination.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/12/23.
//

import SwiftUI

struct NewNavigationDestination: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationStack {
            List(1..<50, id: \.self) { item in
                NavigationLink(value: item) {
                    Label("Row \(item)", systemImage: "\(item).circle")
                }
            }
            .navigationDestination(for: Int.self) { item in
                Text("Destination: \(item)")
            }
            .navigationTitle("Navigation Destination")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        isPresented.toggle()
                    }
                }
            }
        }
    }
}
