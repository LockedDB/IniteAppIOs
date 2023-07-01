import SwiftUI

struct ProjectCardView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    HStack {
                        TagView(text: "Website", color: .orange)
                        TagView(text: "App", color: .cyan)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                }
                
                Text("Pages “About” and “Careers”")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.vertical, 8)
                
                Text("All the details are in the file, I’m sure it will turn out cool! Let’s do the exact opposite of the first concept.")
                    .opacity(0.7)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.bottom, 8)
                
                VStack (alignment: .leading, spacing: 8) {
                    Text("• There was an issue with the delivery")
                    Text("• Let’s talk about the kitchen!")
                }
                .opacity(0.7)
                .padding(.leading, 8)
                
                Divider()
                    .padding(.vertical, 8)
                
                isAddingButtonView()
                
                Divider()
                    .padding(.vertical, 8)
                
                ProjectCardFooterView(
                    participantsUrls: [
                        "https://picsum.photos/200/300.jpg",
                        "https://picsum.photos/200/200.jpg"
                    ],
                    nMessages: 1,
                    nAttachments: 3
                )
                
            }
            .padding(16)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.black)
                    .foregroundColor(.clear)
            )
        }
        .padding()
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView()
    }
}
