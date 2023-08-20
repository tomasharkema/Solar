// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Solar",
    platforms: [.iOS(.v9), .macOS(.v10_10), .watchOS(.v3), .tvOS(.v9)],
    products: [
        .library(name: "SolarLib", targets: ["SolarLib"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SolarLib", path: "Solar", exclude: ["Info.plist"]),
        .testTarget(name: "SolarTests", dependencies: ["SolarLib"], path: "SolarTests", exclude: ["Info.plist"], resources: [.copy("CorrectResults.json")]),
    ]
)
