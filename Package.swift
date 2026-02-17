// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "DataNetlib",
    platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        .library(name: "libDataNetlib", targets: ["libDataNetlib"])
    ],
    dependencies: [],
    targets: [
        // -----------------------------------------------------------------
        // Resource‑only target
        // -----------------------------------------------------------------
        .target(
            name: "libDataNetlib",
            resources: [
                // `.copy` leaves files untouched (no asset compilation).
                .copy("Resources") // <-- raw test data
            ]
        )
    ]
)
