import SwiftUI

struct ContentView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(firestoreManager.projects, id: \.id) { project in
                    ProjectCardView(project: project)
                }
            }
            
            Spacer()
            
            FloatingButtonView()
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let mockManager = FirestoreManager()
        mockManager.projects = [
            mockedProject,
            // Add more mock projects as needed
        ]
        return ContentView().environmentObject(mockManager)
    }
}
