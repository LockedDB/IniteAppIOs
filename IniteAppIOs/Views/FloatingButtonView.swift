//
//  FloatingButtonView.swift
//  IniteAppIOs
//
//  Created by Dani Benet on 2/7/23.
//

import SwiftUI

struct FloatingButtonView: View {
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    print("Add button tapped")
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.black)
                        .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
                }
                .padding()
            }
        }
    }
}

struct FloatingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButtonView()
    }
}
