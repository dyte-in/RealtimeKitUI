// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "RealtimeKitUI",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "RealtimeKitUI", targets: ["RealtimeKitUI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/dyte-in/RealtimeKitCoreiOS.git",
            revision: "8af7acefb58799c1ede8d4e445678be9cdf199d7"
        ),
    ],
    targets: [
        .target(
            name: "RealtimeKitUI",
            dependencies: [
                .product(name: "RealtimeKit", package: "RealtimeKitCoreiOS"),
                .product(name: "RTKWebRTC", package: "RealtimeKitCoreiOS"),
            ],
            path: "RealtimeKitUI/",
            resources: [
                .process("Resources/notification_join.mp3"),
                .process("Resources/notification_message.mp3"),
            ]
        ),
    ]
)
