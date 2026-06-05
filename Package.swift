// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationMobileFuseAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationMobileFuseAdapter",
            targets: ["AppLovinMediationMobileFuseAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm.git", exact: "1.11.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationMobileFuseAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationMobileFuseAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "MobileFuseSDK", package: "mobilefuse-ios-sdk-spm"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationMobileFuseAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mobilefuse-adapter/AppLovinMediationMobileFuseAdapter-1.11.0.0.zip",
            checksum: "3f69af5c6207f52758d72a854abda4647f8ed5fc9ed120b0fb120ca080202393"
        )
    ]
)
