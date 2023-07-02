import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ProjectCardView(
                    title: "Pages “About” and “Careers”",
                    description: "All the details are in the file, I’m sure it will turn out cool! Let’s do the exact opposite of the first concept.",
                    topicLines: [
                        "There was an issue with the delivery",
                        "Let’s talk about the kitchen!"
                    ],
                    participantsUrls: [
                        "https://picsum.photos/200/300.jpg",
                        "https://picsum.photos/200/200.jpg"
                    ],
                    tags: [
                        "Website",
                        "App"
                    ],
                    nMessages: 1,
                    nAttachments: 3
                )
            }
            .navigationTitle("Projects")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

