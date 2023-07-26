//
//  NewMultiDatePicker.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/22/23.
//

import SwiftUI

struct NewMultiDatePicker: View {
    
    @Environment(\.calendar) var calendar
    
    @State var dates = Set<DateComponents>()
    
    var summary: String {
        dates.compactMap { components in
            calendar.date(from: components)?.formatted(date: .long, time: .omitted)
        }.formatted()
    }
    
    var body: some View {
        VStack {
            MultiDatePicker("Select your dates", selection: $dates)
            Text(summary)
        }
        .padding()
    }
}

struct NewMultiDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        NewMultiDatePicker()
    }
}
