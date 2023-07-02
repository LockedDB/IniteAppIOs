import SwiftUI

enum LightModeColors: String, CaseIterable {
    case red
    case green
    case blue
    case yellow
    case cyan

    var color: Color {
        switch self {
        case .red:
            return Color.red
        case .green:
            return Color.green
        case .blue:
            return Color.blue
        case .yellow:
            return Color.yellow
        case .cyan:
            return Color.cyan
        }
    }
    
    static var random: LightModeColors {
        return LightModeColors.allCases.randomElement()!
    }
}

enum DarkModeColors: String, CaseIterable {
    case purple
    case orange
    case pink
    case teal
    case gray

    var color: Color {
        switch self {
        case .purple:
            return Color.purple
        case .orange:
            return Color.orange
        case .pink:
            return Color.pink
        case .teal:
            return Color.teal
        case .gray:
            return Color.gray
        }
    }
    
    static var random: DarkModeColors {
        return DarkModeColors.allCases.randomElement()!
    }
}

struct TagView: View {
    var text: String
    var isDarkMode: Bool
    var color: Color {
        if isDarkMode {
            return DarkModeColors.random.color
        } else {
            return LightModeColors.random.color
        }
    }

    var body: some View {
        Text(text)
            .font(.caption)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(color)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TagView(text: "Swift UI", isDarkMode: false)
            TagView(text: "Swift UI", isDarkMode: true)
        }
    }
}
