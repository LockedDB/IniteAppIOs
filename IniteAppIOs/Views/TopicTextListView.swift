//
//  TopicTextListView.swift
//  IniteAppIOs
//
//  Created by Dani Benet on 1/7/23.
//

import SwiftUI

struct TopicTextListView: View {
    var lines: [String]
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            ForEach(lines, id: \.self) { line in
                Text("• \(line)")
            }
        }
        .opacity(0.7)
        .padding(.leading, 8)
    }
}

struct TopicTextListView_Previews: PreviewProvider {
    static var previews: some View {
        TopicTextListView(lines: [
            "There was an issue with the delivery",
            "Let’s talk about the kitchen!"
        ])
    }
}
