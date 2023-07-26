//
//  ContentView.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 1/12/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var newNavigationPresented = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Views") {
                    Button("New Navigation Functionality") { // having a nested navigationStack does not work inside a form? making it a button/sheet for now
                        newNavigationPresented.toggle()
                    }
                    if UIDevice.current.userInterfaceIdiom == .pad {
                        NavigationLink("NavigationSplitView") {
                            NewNavigationSplitView()
                        }
                    }
                    NavigationLink("New Grid Functionality") {
                        NewFixedGrids()
                    }
                    NavigationLink("ShareLinks") {
                        NewShareLink()
                    }
                    NavigationLink("MultiDatePicker") {
                        NewMultiDatePicker()
                    }
                }
                Section("Modifiers") {
                    NavigationLink("Searchable") {
                        NewSearchableModifier()
                    }
                    NavigationLink("Gradient") {
                        NewGradientModifier()
                    }
                    NavigationLink("Shadow") {
                        NewShadowModifier()
                    }
                    NavigationLink("ScrollDismissesKeyboard") {
                        NewScrollDismissModifier()
                    }
                    NavigationLink("ScrollIndicators") {
                        NewScrollDismissModifier(scrollIdicators: .visible)
                    }
                    NavigationLink("PersistentSystemOverlays") {
                        Text("PersistentSystemOverlays")
                    }
                }
                Section("Other") {
                    if UIDevice.current.userInterfaceIdiom != .pad {
                        NavigationLink("New Sheet Functionality") {
                            PresentationDetents()
                        }
                    }
                    NavigationLink("New OnTapGesture Location") {
                        OnTapGestureLocation()
                    }
                    NavigationLink("New AnyLayout Struct") {
                        Text("AnyLayout")
                    }
                    NavigationLink("StoreKit (Beta)") {
                        Text("StoreKit - RequestReview")
                    }
                    NavigationLink("New SF Symbols Functionality") {
                        Text("SF Symbols 4")
                    }
                }
            }
            .navigationTitle("SwiftUI 2022")
            .sheet(isPresented: $newNavigationPresented) {
                NewNavigationDestination(isPresented: $newNavigationPresented)
            }
        }
    }
}
