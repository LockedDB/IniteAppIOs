import SwiftUI

struct ProjectCardHeaderView: View {
    var tags: [String]
    var body: some View {
        HStack {
            HStack {
                ForEach(tags, id: \.self) { line in
                    TagView(text: line, isDarkMode: true)
                }
            }
            
            Spacer()
            
            Image(systemName: "ellipsis")
        }
    }
}


struct ProjectCardHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardHeaderView(
            tags: [
                "Website",
                "App"
            ]
        )
        .padding()
    }
}
