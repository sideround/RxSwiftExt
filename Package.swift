// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RxSwiftExt",
    platforms: [
        .iOS(.v10), .tvOS(.v9), .macOS(.v10_11), .watchOS(.v3)
    ],
    products: [
        .library(name: "RxSwiftExt", type: .dynamic, targets: ["RxSwiftExt"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .branch("5.1.0-spm-dynamic"))
    ],
    targets: [
        .target(name: "RxSwiftExt", dependencies: ["RxSwift", "RxCocoa"], path: "Source"),
        .testTarget(name: "RxSwiftExtTests", dependencies: ["RxSwiftExt", "RxTest"], path: "Tests"),
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
