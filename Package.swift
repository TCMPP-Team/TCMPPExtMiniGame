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
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/noshark/TCMPPExtMiniGame/2.2.3/16/TCMPPExtMiniGame_2.2.3.xcframework.zip",
            checksum: "5a432b5c499ef2706174336cf0618df785239af3cf843f860ef1cd9b059d97af"
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
