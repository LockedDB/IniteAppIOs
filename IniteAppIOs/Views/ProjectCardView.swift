import SwiftUI

struct ProjectCardView: View {
    var title: String = ""
    var description: String = ""
    var topicLines: [String]
    var participantsUrls: [String]
    var tags: [String]
    var nMessages: Int = 0
    var nAttachments: Int = 0
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                ProjectCardHeaderView(tags: tags)
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.vertical, 8)
                
                Text(description)
                    .opacity(0.7)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.bottom, 8)
                
                TopicTextListView(lines: topicLines)
                
                Divider()
                    .background(Color.primary)
                    .padding(.top, 8)
                
                isAddingButtonView()
                
                Divider()
                    .background(Color.primary)
                    .padding(.bottom, 8)
                
                ProjectCardFooterView(
                    participantsUrls: participantsUrls,
                    nMessages: nMessages,
                    nAttachments: nAttachments
                )
                
            }
            .padding(16)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primary)
                    .foregroundColor(.clear)
            )
        }
        .padding()
        .onTapGesture {
            print("tapped")
        }
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
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
            tags: ["Website", "Apps"],
            nMessages: 1,
            nAttachments: 3
        )
    }
}
