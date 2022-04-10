// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

fileprivate extension String {
    static let SwiftSoup = "SwiftSoup"
}

let package = Package(
    name: "Common",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Common",
            targets: ["Common"]),
    ],
    dependencies: [
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.3.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Common",
            dependencies: [
                .product(name: .SwiftSoup, package: "SwiftSoup"),
            ]),
        .testTarget(
            name: "CommonTests",
            dependencies: ["Common"]),
    ]
)
