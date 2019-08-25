// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZamzamKit",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "ZamzamKit",
            targets: ["ZamzamKit"]
        ),
        .library(
            name: "ZamzamLocation",
            targets: ["ZamzamLocation"]
        ),
        .library(
            name: "ZamzamNotification",
            targets: ["ZamzamNotification"]
        ),
        .library(
            name: "ZamzamUI",
            targets: ["ZamzamUI"]
        )
    ],
    dependencies: [
        .package(url: "git@github.com:ZamzamInc/ZamzamCore.git", .branch("develop"))
    ],
    targets: [
        .target(
            name: "ZamzamKit",
            dependencies: ["ZamzamCore"]
        ),
        .testTarget(
            name: "ZamzamKitTests",
            dependencies: ["ZamzamKit"]
        ),
        .target(
            name: "ZamzamLocation",
            dependencies: ["ZamzamCore"]
        ),
        .testTarget(
            name: "ZamzamLocationTests",
            dependencies: ["ZamzamLocation"]
        ),
        .target(
            name: "ZamzamNotification",
            dependencies: ["ZamzamCore"]
        ),
        .testTarget(
            name: "ZamzamNotificationTests",
            dependencies: ["ZamzamNotification"]
        ),
        .target(
            name: "ZamzamUI",
            dependencies: ["ZamzamCore"]
        ),
        .testTarget(
            name: "ZamzamUITests",
            dependencies: ["ZamzamUI"]
        )
    ]
)
