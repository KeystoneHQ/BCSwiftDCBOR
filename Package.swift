// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "DCBOR",
    platforms: [
        .macOS(.v11),
        .iOS(.v13),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "DCBOR",
            targets: ["DCBOR"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", .upToNextMajor(from: "1.1.0")),
        .package(url: "https://github.com/soralit/swift-collections-sorted-collections", .upToNextMajor(from: "1.2.2")),
        .package(url: "https://github.com/wolfmcnally/WolfBase.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/KeystoneHQ/BCSwiftFloat16.git", .upToNextMajor(from: "0.3.0")),
    ],
    targets: [
        .target(
            name: "DCBOR",
            dependencies: [
                .product(name: "BCFloat16", package: "BCSwiftFloat16"),
                .product(name: "Collections", package: "swift-collections"),
                .product(name: "SortedCollections", package: "swift-collections-sorted-collections"),
            ]),
        .testTarget(
            name: "DCBORTests",
            dependencies: [
                "DCBOR",
                "WolfBase",
            ]),
    ]
)
