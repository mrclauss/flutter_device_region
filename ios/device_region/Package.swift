// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "device_region",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "device-region", targets: ["device_region"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "device_region",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: [
                // If your plugin requires a privacy manifest, uncomment the following line.
                // .process("PrivacyInfo.xcprivacy"),
            ]
        )
    ]
)
