//
//  NewShareLink.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 5/16/23.
//

import SwiftUI

struct NewShareLink: View {
    
    let link = URL(string: "www.google.com")!
    let sharePreview = SharePreview(Text("Here is Google."))
    
    var body: some View {
        VStack(spacing: 10) {
            ShareLink(item: link, message: Text("You can customize the share link!"))
            ShareLink("Here is the link", item: link)
            ShareLink(item: link) {
                Label("Here is the link", systemImage: "swift")
            }
            ShareLink(item: link, preview: sharePreview) // Custom preview for share links
        }
    }
                
}

struct NewShareLink_Previews: PreviewProvider {
    static var previews: some View {
        NewShareLink()
    }
}
