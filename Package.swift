// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "Netlib",
    platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        .library(name: "Netlib", targets: ["Netlib"])
    ],
    dependencies: [],
    targets: [
        // -----------------------------------------------------------------
        // Resource‑only target
        // -----------------------------------------------------------------
        .target(
            name: "Netlib",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
