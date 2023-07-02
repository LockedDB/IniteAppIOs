import SwiftUI

struct ContentView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    
    var body: some View {
        ScrollView {
            ForEach(firestoreManager.projects, id: \.id) { project in
                ProjectCardView(
                    title: project.title,
                    description: project.description,
                    topicLines: project.topicLines,
                    participantsUrls: project.participantsUrls,
                    tags: project.tags,
                    nMessages: project.nMessages,
                    nAttachments: project.nAttachments
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
