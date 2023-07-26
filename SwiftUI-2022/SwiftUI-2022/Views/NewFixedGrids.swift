//
//  NewFixedGrids.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/15/23.
//

import SwiftUI

struct NewFixedGrids: View {
    
    @State var redScore = 0
    @State var blueScore = 0
    
    var body: some View {
        Grid {
            GridRow {
                Text("Red")
                
                ForEach(0..<redScore, id: \.self) { _ in
                    Rectangle()
                        .fill(.red)
                        .frame(width: 20, height: 20)
                }
            }
            GridRow {
                Text("Blue")
                
                ForEach(0..<blueScore, id: \.self) { _ in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 20, height: 20)
                }
            }
            Button("Red Scored") { redScore += 1 }
            Button("Blue Scored") { blueScore += 1 }
        }
    }
}

struct NewFixedGrids_Previews: PreviewProvider {
    static var previews: some View {
        NewFixedGrids()
    }
}
