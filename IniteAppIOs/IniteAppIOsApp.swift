//
//  IniteAppIOsApp.swift
//  IniteAppIOs
//
//  Created by Dani Benet on 30/6/23.
//

import SwiftUI
import Firebase

@main
struct IniteAppIOsApp: App {
    @StateObject var firestoreManager = FirestoreManager()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "ellipsis")
                                .onTapGesture {
                                    print("menu tapped")
                                }
                        }
                    }
                    .navigationTitle("Projects")
                    .environmentObject(firestoreManager)
            }
        }
    }
}
