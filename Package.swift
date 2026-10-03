// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "MovieAppDS",
    platforms: [.iOS(.v26), .visionOS(.v26)],
    products: [
        .library(name: "MovieAppDS", targets: ["MovieAppDS"])
    ],
    targets: [
        .target(
            name: "MovieAppDS",
            resources: [
                .process("Resources/Colors.xcassets"),
                .copy("Resources/Fonts")
            ],
            swiftSettings: [
                .defaultIsolation(MainActor.self),
                .enableUpcomingFeature("ApproachableConcurrency"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        )
    ]
)
