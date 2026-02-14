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
        // Your library target
        // -----------------------------------------------------------------
        .target(
            name: "DataNetlib",
            path: "src/Data-Netlib/",
            exclude: [
                "../Data_NetlibrootDummy.swift"
            ]
        ),

        // -----------------------------------------------------------------
        // Resource‑only target – holds test fixtures.
        // -----------------------------------------------------------------
        .target(
            name: "RootTestResources",
            path: ".",                          // “.” = repo root
            exclude: [

                "coindatanetlib.pc.in",
                "compile",
                "config.guess",
                "config.sub",
                "configure",
                "configure.ac",
                //"Data_Netlib.swift",
                "depcomp",
                "install-sh",
                "LICENSE",
                "ltmain.sh",
                "Makefile.am",
                "Makefile.in",
                "missing",
                "Package.swift",
                //"src",

                // add any other non‑fixture files/folders you have at the top level
            ],

            // No explicit sources – the dummy file will be handled as a resource.
            resources: [.process(".")]          // process everything that remains
        ),

        // -----------------------------------------------------------------
        // Your test target – depends on both the library and the resource‑only target.
        // -----------------------------------------------------------------
//        .testTarget(
//            name: "MyLibraryTests",
//            dependencies: [
//                "DataNetlib",               // code you are testing
//                "RootTestResources"        // brings the fixtures into this bundle
//            ],
//            resources: []                  // no extra resources needed here
//        )
    ]
)
