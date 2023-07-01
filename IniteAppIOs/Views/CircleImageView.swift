import SwiftUI

struct CircleImageView: View {
    var imageUrl: String = ""
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            Color.gray.opacity(0.7)
        }
        .frame(width: 40, height: 40)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color(red: 0.11, green: 0.12, blue: 0.13), lineWidth: 2)
        )
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(imageUrl: "https://picsum.photos/200/300.jpg")
    }
}
