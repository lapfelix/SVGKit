// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SVGKit",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v11),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "SVGKit",
            type: .dynamic,
            targets: ["SVGKit"]
        ),
        .library(
            name: "SVGKitSwift",
            type: .dynamic,
            targets: ["SVGKitSwift"]
        )
    ],
    targets: [
        .target(
            name: "SVGKit",
            path: "Source",
            exclude: [
                "SwiftUI additions"
            ]
        ),
        .target(
            name: "SVGKitSwift",
            dependencies: [
                "SVGKit"
            ],
            path: "Source/SwiftUI additions"
        )
    ]
)
