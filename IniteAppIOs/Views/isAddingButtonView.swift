//
//  isAddingButtonView.swift
//  IniteAppIOs
//
//  Created by Dani Benet on 30/6/23.
//

import SwiftUI

struct isAddingButtonView: View {
    
    @State private var isAdding = false
    @State private var inputText = ""
    
    var body: some View {
        HStack(spacing: 10) {
            if isAdding {
                TextField("Enter text...", text: $inputText)
                    .transition(.scale)
                
                Spacer()
                
                Button("Add") {
                    print("Add pressed")
                    self.isAdding.toggle()
                }
                .transition(.scale)
            } else {
                Image(systemName: "plus")
                Text("Add Button")
                    .onTapGesture {
                        withAnimation {
                            self.isAdding.toggle()
                        }
                    }
                    .transition(.scale)
            }
        }
        .padding(8)
    }
        
}


struct isAddingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        isAddingButtonView()
    }
}
