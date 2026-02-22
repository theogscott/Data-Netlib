// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "DataNetlib",
    platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        .library(name: "dataNetlib", targets: ["dataNetlib"])
    ],
    dependencies: [],
    targets: [
        // -----------------------------------------------------------------
        // Resource‑only target
        // -----------------------------------------------------------------
        .target(
            name: "dataNetlib",
            resources: [
                // `.copy` leaves files untouched (no asset compilation).
                .copy("Resources/Data/Netlib") // <-- raw test data
            ]
        )
    ]
)
