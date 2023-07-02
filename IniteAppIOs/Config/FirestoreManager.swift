import Foundation
import Firebase

class FirestoreManager: ObservableObject {
    
    @Published var projects: [Project] = []
    
    init() {
        fetchProjects()
    }
    
    func fetchProjects() {
        let db = Firestore.firestore()
        
        db.collection("projects").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.projects = querySnapshot!.documents.compactMap { document in
                    self.mapDocumentToProject(document: document)
                }
            }
        }
    }
    
    private func mapDocumentToProject(document: QueryDocumentSnapshot) -> Project? {
        let data = document.data()
        return Project(
            id: document.documentID,
            title: data["title"] as? String ?? "",
            description: data["description"] as? String ?? "",
            topicLines: data["topicLines"] as? [String] ?? [],
            participantsUrls: data["participantsUrls"] as? [String] ?? [],
            tags: data["tags"] as? [String] ?? [],
            nMessages: data["nMessages"] as? Int ?? 0,
            nAttachments: data["nAttachments"] as? Int ?? 0
        )
    }
}
