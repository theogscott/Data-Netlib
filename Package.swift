// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "DataNetlib",
    platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        .library(name: "DataNetlib", targets: ["DataNetlib"])
    ],
    dependencies: [],
    targets: [
        // -----------------------------------------------------------------
        // Resource‑only target
        // -----------------------------------------------------------------
        .target(
            name: "DataNetlib",
            resources: [
                // `.copy` leaves files untouched (no asset compilation).
                .copy("Resources/Data") // <-- raw test data
            ]
        )
    ]
)
