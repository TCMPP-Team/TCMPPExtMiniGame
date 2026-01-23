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
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/noshark/TCMPPExtMiniGame/2.3.3/23/TCMPPExtMiniGame_2.3.3.xcframework.zip",
            checksum: "a20cf81294ac9a23cb9cbce6822f34150f127c84af695d3798eacc5ca643e2f1"
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
