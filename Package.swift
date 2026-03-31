// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "GoogleMobileAdsHyBidAdapters",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "GoogleMobileAdsHyBidAdapters",
            targets: ["GoogleMobileAdsHyBidAdapters"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vervegroup/hybid-ios-spm-sdk.git", .upToNextMajor(from: "3.7.1")),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "13.0.0")
    ],
    targets: [
        .target(
            name: "GoogleMobileAdsHyBidAdapters",
            dependencies: [
                .product(name: "HyBid", package: "hybid-ios-spm-sdk"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "GoogleMobileAdsAdapters",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("GAD"),
                .headerSearchPath("GAM")
            ]
        )
    ]
)
