// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationMobileFuseAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationMobileFuseAdapter",
            targets: ["AppLovinMediationMobileFuseAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm.git", exact: "1.12.0")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mobilefuse-adapter/AppLovinMediationMobileFuseAdapter-1.12.0.1.zip",
            checksum: "a48d8868b1c1f967108b5824a635a3f57e8688a2959076d40654341d39dfc9fe"
        )
    ]
)
