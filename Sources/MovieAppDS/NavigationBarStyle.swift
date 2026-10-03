import UIKit

public enum NavigationBarStyle {
    public static func apply(to navigationBar: UINavigationBar, prefersLargeTitles: Bool) {
        let textColor = UIColor.MVColor(.textPrimary)
        navigationBar.prefersLargeTitles = prefersLargeTitles
        navigationBar.largeTitleTextAttributes = [.font: UIFont.MVFont(.largeTitle), .foregroundColor: textColor]
        navigationBar.titleTextAttributes = [.font: UIFont.MVFont(.navigationTitle), .foregroundColor: textColor]
    }
}
