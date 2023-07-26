//
//  NewNavigationSplitView.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/15/23.
//

import SwiftUI

struct NewNavigationSplitView: View {
    
    @State var players = ["player 1", "player 2", "player 3"]
    @State var selectedPlayer: String?
    
    var body: some View {
        NavigationSplitView {
            List(players, id: \.self, selection: $selectedPlayer, rowContent: Text.init)
        } detail: {
            Text(selectedPlayer ?? "Please select a player.")
        }
    }
}

struct NewNavigationSplitView_Previews: PreviewProvider {
    static var previews: some View {
        NewNavigationSplitView()
    }
}
