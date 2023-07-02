import SwiftUI

struct ContentView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    
    var body: some View {
        ScrollView {
            if !firestoreManager.projects.isEmpty {
                ProjectCardView(
                    title: firestoreManager.projects[0].title,
                    description: firestoreManager.projects[0].description,
                    topicLines: firestoreManager.projects[0].topicLines,
                    participantsUrls: firestoreManager.projects[0].participantsUrls,
                    tags: firestoreManager.projects[0].tags,
                    nMessages: firestoreManager.projects[0].nMessages,
                    nAttachments: firestoreManager.projects[0].nAttachments
                )
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "ellipsis")
                    .onTapGesture {
                        print("menu tapped")
                    }
            }
        }
        .navigationTitle("Projects")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

