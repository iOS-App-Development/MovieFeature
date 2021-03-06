// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package. //, .macOS(.v10_13), .tvOS(.v10), .watchOS(.v2)

import PackageDescription

let package = Package(
    name: "MovieFeature",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MovieFeature",
            targets: ["MovieFeature"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "SharedModule", url: "https://github.com/iOS-App-Development/SharedModule.git", .branch("master")),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MovieFeature",
            dependencies: ["SharedModule"]),
        .testTarget(
            name: "MovieFeatureTests",
            dependencies: ["MovieFeature","SharedModule"]),
    ]
)
