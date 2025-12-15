// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TCMPPExtMiniGame",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TCMPPExtMiniGame",
            targets: ["TCMPPExtMiniGameWrapper"]
        )
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "TCMPPExtMiniGame",
            path: "Sources/TCMPPExtMiniGame.xcframework"
        ),
        .target(
            name: "TCMPPExtMiniGameWrapper",
            dependencies: [
                "TCMPPExtMiniGame",
            ],
            resources: [.copy("magicbrushres.bundle")]
        )
    ]
) 
