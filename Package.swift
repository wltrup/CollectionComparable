// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CollectionComparable",
    products: [
        .library(
            name: "CollectionComparable",
            targets: ["CollectionComparable"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CollectionComparable",
            dependencies: []),
        .testTarget(
            name: "CollectionComparableTests",
            dependencies: ["CollectionComparable"]),
    ]
)
