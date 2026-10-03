import CoreText
import Foundation
import OSLog

public enum FontRegistrar {
    private static let logger = Logger(subsystem: "MovieAppDS", category: "FontRegistrar")

    public static func registerFonts() {
        let fontURLs = Bundle.module.urls(forResourcesWithExtension: "ttf", subdirectory: "Fonts") ?? []
        for fontURL in fontURLs {
            register(fontURL)
        }
    }

    private static func register(_ fontURL: URL) {
        var error: Unmanaged<CFError>?
        guard
            !CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, &error),
            let failure = error?.takeRetainedValue(),
            CFErrorGetCode(failure) != CTFontManagerError.alreadyRegistered.rawValue
        else {
            return
        }
        let fileName = fontURL.lastPathComponent
        let reason = String(describing: failure)
        logger.error("Could not register \(fileName, privacy: .public): \(reason, privacy: .public)")
    }
}
