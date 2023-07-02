import SwiftUI

struct ProjectCardView: View {
    var project: Project
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                ProjectCardHeaderView(tags: project.tags)
                
                Text(project.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.vertical, 8)
                
                Text(project.description)
                    .opacity(0.7)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.bottom, 8)
                
                TopicTextListView(lines: project.topicLines)
                
                Divider()
                    .background(Color.primary)
                    .padding(.top, 8)
                
                isAddingButtonView()
                
                Divider()
                    .background(Color.primary)
                    .padding(.bottom, 8)
                
                ProjectCardFooterView(
                    participantsUrls: project.participantsUrls,
                    nMessages: project.nMessages,
                    nAttachments: project.nAttachments
                )
                
            }
            .padding(16)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primary)
                    .foregroundColor(.clear)
            )
            .onTapGesture {
                print("tapped")
            }
        }
        .padding()
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView(project: mockedProject)
    }
}
