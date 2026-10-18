import UIKit

public enum MVImages {
    case logo

    var resource: ImageResource {
        switch self {
        case .logo:
            .logo
        }
    }
}

extension UIImage {
    public static func MVImage(_ name: MVImages) -> UIImage {
        UIImage(resource: name.resource)
    }
}
