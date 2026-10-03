import UIKit

// Labels using these fonts must set `adjustsFontForContentSizeCategory = true`.
public enum MVFonts {
    case largeTitle
    case display
    case navigationTitle
    case sectionTitle
    case rowTitle
    case body
    case label
    case artworkTitle
    case footnote
    case caption

    var font: UIFont {
        switch self {
        case .largeTitle:
            makeFont(.bold, size: 32, relativeTo: .largeTitle)
        case .display:
            makeFont(.bold, size: 30, relativeTo: .largeTitle)
        case .navigationTitle:
            makeFont(.semiBold, size: 17, relativeTo: .headline)
        case .sectionTitle:
            makeFont(.semiBold, size: 18, relativeTo: .title3)
        case .rowTitle:
            makeFont(.semiBold, size: 15, relativeTo: .subheadline)
        case .body:
            makeFont(.regular, size: 15, relativeTo: .body)
        case .label:
            makeFont(.medium, size: 14, relativeTo: .callout)
        case .artworkTitle:
            makeFont(.bold, size: 14, relativeTo: .callout)
        case .footnote:
            makeFont(.regular, size: 13, relativeTo: .footnote)
        case .caption:
            makeFont(.regular, size: 12, relativeTo: .caption1)
        }
    }

    private enum Weight: String {
        case regular = "Lexend-Regular"
        case medium = "Lexend-Medium"
        case semiBold = "Lexend-SemiBold"
        case bold = "Lexend-Bold"

        var systemWeight: UIFont.Weight {
            switch self {
            case .regular:
                .regular
            case .medium:
                .medium
            case .semiBold:
                .semibold
            case .bold:
                .bold
            }
        }
    }

    private func makeFont(_ weight: Weight, size: CGFloat, relativeTo textStyle: UIFont.TextStyle) -> UIFont {
        let font = UIFont(name: weight.rawValue, size: size) ?? .systemFont(ofSize: size, weight: weight.systemWeight)
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
}

extension UIFont {
    public static func MVFont(_ style: MVFonts) -> UIFont {
        style.font
    }
}
