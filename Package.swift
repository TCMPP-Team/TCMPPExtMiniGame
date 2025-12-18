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
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/noshark/TCMPPExtMiniGame/2.2.4/20/TCMPPExtMiniGame_2.2.4.xcframework.zip",
            checksum: "b5ed8705094fa51325257d1910f0ad0c70c24d00d7c60dab6279f62758923778"
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
