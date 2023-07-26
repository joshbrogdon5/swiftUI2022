//
//  OnTapGestureLocation.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 6/5/23.
//

import SwiftUI

struct OnTapGestureLocation: View {
    
    @State var tappedLocation: CGPoint?
    
    var body: some View {
        VStack {
            Text("Tap the Circle")
                .padding()
            Circle()
                .fill(.blue)
                .frame(width: 100, height: 100)
                .onTapGesture(coordinateSpace: .global) { location in
                    self.tappedLocation = location
                }
            if let location = tappedLocation {
                Text("You tapped: x = \(location.x), y = \(location.y)")
                    .padding()
            }
        }
    }
}
