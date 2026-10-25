import UIKit

extension UIButton.Configuration {
    public static func brandFilled() -> UIButton.Configuration {
        var configuration = UIButton.Configuration.filled()
        configuration.baseBackgroundColor = .MVColor(.brand)
        configuration.baseForegroundColor = .white
        configuration.cornerStyle = .large
        configuration.buttonSize = .large
        return configuration
    }

    public static func neutralFilled() -> UIButton.Configuration {
        var configuration = UIButton.Configuration.filled()
        configuration.baseBackgroundColor = .MVColor(.fillPrimary)
        configuration.baseForegroundColor = .MVColor(.textPrimary)
        configuration.cornerStyle = .large
        configuration.buttonSize = .large
        return configuration
    }
}
