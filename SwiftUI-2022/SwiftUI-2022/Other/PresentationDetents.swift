//
//  PresentationDetents.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 6/5/23.
//

import SwiftUI

struct PresentationDetents: View {
    
    @State var viewPresented = false
    
    var body: some View {
        VStack {
            Button("Press ME!") {
                viewPresented.toggle()
            }
        }
        .sheet(isPresented: $viewPresented) {
            Text("This is the new bottom sheet!")
                .presentationDetents([.medium])
        }
    }
}

struct PresentationDetents_Previews: PreviewProvider {
    static var previews: some View {
        PresentationDetents()
    }
}
