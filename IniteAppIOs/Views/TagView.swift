//
//  TagView.swift
//  IniteAppIOs
//
//  Created by Dani Benet on 30/6/23.
//
import SwiftUI

struct TagView: View {
    var text: String
    var color: Color

    var body: some View {
        Text(text)
            .font(.caption)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(color)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}


struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(text: "Swift UI", color: .cyan)
    }
}
