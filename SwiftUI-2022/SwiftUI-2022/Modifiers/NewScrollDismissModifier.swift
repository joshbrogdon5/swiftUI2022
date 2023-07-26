//
//  NewScrollDismissModifier.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/25/23.
//

import SwiftUI

struct NewScrollDismissModifier: View { // Also for new indicator modifier
    
    @State var username = ""
    @State var bio = ""
    
    var scrollIndicators: ScrollIndicatorVisibility
    
    init(scrollIdicators: ScrollIndicatorVisibility = .never) {
        self.scrollIndicators = scrollIdicators
    }
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Username", text: $username)
                TextEditor(text: $bio)
                    .frame(height: 400)
                    .border(.quaternary, width: 1)
            }
            .padding(.horizontal)
        }
        .scrollDismissesKeyboard(.immediately)
        .scrollIndicators(scrollIndicators)
    }
}
