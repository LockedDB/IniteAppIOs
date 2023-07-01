import SwiftUI

struct ProjectCardFooterView: View {
    var participantsUrls: [String] = []
    var nMessages: Int = 0
    var nAttachments: Int = 0
    
    var body: some View {
        HStack {
            HStack (spacing: -16) {
                ForEach(participantsUrls, id: \.self) { url in
                    CircleImageView(imageUrl: url)
                }
            }
            
            Spacer()
            
            HStack (spacing: 8) {
                if nMessages != 0 {
                    HStack(alignment: .firstTextBaseline, spacing: 2) {
                        Image(systemName: "bubble.right")
                        Text("\(nMessages)")
                    }
                }
                
                if nAttachments != 0 {
                    HStack(alignment: .firstTextBaseline, spacing: 2) {
                        Image(systemName: "paperclip")
                        Text("\(nAttachments)")
                    }
                }
            }
        }
    }
}

struct ProjectCardFooterView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardFooterView(
            participantsUrls:
                ["https://picsum.photos/200/300.jpg", "https://picsum.photos/200/200.jpg"],
            nMessages: 1,
            nAttachments: 3
        )
        .padding()
    }
}
