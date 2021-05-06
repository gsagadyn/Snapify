// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Snapify",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Snapify", targets: ["Snapify"])
    ],
    targets: [
        .target(name: "Snapify", dependencies: [], path: "Snapify", resources: [])
    ]
)
