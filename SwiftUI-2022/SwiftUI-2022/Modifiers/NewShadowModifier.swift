//
//  NewGradientModifier.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/24/23.
//

import SwiftUI

struct NewShadowModifier: View {
    var body: some View {
        Circle()
            .fill(.red.shadow(.inner(color: .black, radius: 20)))
            .padding()
    }
}

struct NewShadowModifier_Previews: PreviewProvider {
    static var previews: some View {
        NewShadowModifier()
    }
}
