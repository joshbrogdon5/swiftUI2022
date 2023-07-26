//
//  NewSearchableModifier.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/22/23.
//

import SwiftUI

struct Message: Identifiable, Codable {
    let id: Int
    var user: String
    var text: String
}

enum SearchScope: String, CaseIterable {
    case inbox, favorites
}

struct NewSearchableModifier: View {
    
    @State private var messages = [Message]()
    
    @State private var searchText = ""
    @State private var searchScope = SearchScope.inbox
    
    var filteredMessages: [Message] {
        if searchText.isEmpty {
            return messages
        } else {
            return messages.filter { $0.text.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(filteredMessages) { message in
                    VStack(alignment: .leading) {
                        Text(message.user)
                            .font(.headline)
                        Text(message.text)
                    }
                }
            }
            .searchable(text: $searchText)
            .searchScopes($searchScope) {
                ForEach(SearchScope.allCases, id: \.self) { scope in
                    Text(scope.rawValue.capitalized)
                }
            }
        }
        .onAppear(perform: runSearch)
        .onSubmit(of: .search, runSearch)
        .onChange(of: searchScope, perform: { _ in runSearch() })
    }
    
    func runSearch() {
        Task {
            guard let url = URL(string: "https://hws.dev/\(searchScope.rawValue).json") else { return }
            
            let (data, _) = try await URLSession.shared.data(from: url)
            messages = try JSONDecoder().decode([Message].self, from: data)
        }
    }
}

struct NewSearchableModifier_Previews: PreviewProvider {
    static var previews: some View {
        NewSearchableModifier()
    }
}
