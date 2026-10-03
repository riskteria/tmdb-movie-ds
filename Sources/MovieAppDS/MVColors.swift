import UIKit

public enum MVColors {
    case brand
    case backgroundPrimary
    case backgroundSecondary
    case fillPrimary
    case ratingGold
    case textPrimary
    case textSecondary

    var resource: ColorResource {
        switch self {
        case .brand:
            .brand
        case .backgroundPrimary:
            .backgroundPrimary
        case .backgroundSecondary:
            .backgroundSecondary
        case .fillPrimary:
            .fillPrimary
        case .ratingGold:
            .ratingGold
        case .textPrimary:
            .textPrimary
        case .textSecondary:
            .textSecondary
        }
    }
}

extension UIColor {
    public static func MVColor(_ name: MVColors) -> UIColor {
        UIColor(resource: name.resource)
    }
}
