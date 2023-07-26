//
//  NewGradientModifier.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/24/23.
//

import SwiftUI

struct NewGradientModifier: View {
    
    let colors: [Color] = [.blue, .mint, .green, .red, .orange]
    
    var body: some View {
        VStack {
            ForEach(colors, id: \.self) { color in
                Rectangle().fill(color.gradient)
            }
        }
    }
}

struct NewGradientModifier_Previews: PreviewProvider {
    static var previews: some View {
        NewGradientModifier()
    }
}
