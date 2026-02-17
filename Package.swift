// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "Data-Netlib",
    platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        .library(name: "Data-Netlib", targets: ["Data-Netlib"])
    ],
    dependencies: [],
    targets: [
        // -----------------------------------------------------------------
        // Resource‑only target
        // -----------------------------------------------------------------
        .target(
            name: "Data-Netlib",
            resources: [
                // `.copy` leaves files untouched (no asset compilation).
                .copy("Resources") // <-- raw test data
            ]
        )
    ]
)
