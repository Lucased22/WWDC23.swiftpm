// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "WWDC23",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "WWDC23",
            targets: ["AppModule"],
            bundleIdentifier: "br.com.LucasEduardo.WWDC23",
            teamIdentifier: "D95VWD887S",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .box),
            accentColor: .presetColor(.pink),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .landscapeRight,
                .landscapeLeft,
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)