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
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/noshark/TCMPPExtMiniGame/2.3.4/26/TCMPPExtMiniGame_2.3.4.xcframework.zip",
            checksum: "cffe04c35e4f2dd63c5a7efa82ae525aaf1be70355c195528aabdaae2c17aa74"
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
