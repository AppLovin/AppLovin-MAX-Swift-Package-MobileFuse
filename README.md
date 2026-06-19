# AppLovin MAX - iOS MobileFuse Mediation Adapter

The AppLovin MAX MobileFuse mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-MobileFuse
   ```
3. Choose **Up to Next Major Version** and pin to the latest adapter version (e.g. `1.11.0.0`).
4. Add the `AppLovinMediationMobileFuseAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-MobileFuse.git",
        from: "1.11.0.0"
    )
]
```

Then add `AppLovinMediationMobileFuseAdapter` to the `dependencies` of the target that needs it.

## Included dependencies

This package pulls in the following automatically:

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`MobileFuseSDK`](https://github.com/mobilefuse/mobilefuse-ios-sdk-spm) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.applovin.com/en/max/ios/overview/integration)
