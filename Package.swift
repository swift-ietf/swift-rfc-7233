// swift-tools-version:6.0

import Foundation
import PackageDescription

extension String {
    static let rfc7233: Self = "RFC_7233"
}

extension Target.Dependency {
    static var rfc7233: Self { .target(name: .rfc7233) }
}

let package = Package(
    name: "swift-rfc-7233",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .library(name: .rfc7233, targets: [.rfc7233]),
    ],
    dependencies: [
        // Add RFC dependencies here as needed
        // .package(url: "https://github.com/swift-ietf/swift-rfc-1123.git", branch: "main"),
    ],
    targets: [
        .target(
            name: .rfc7233,
            dependencies: [
                // Add target dependencies here
            ]
        ),
        .testTarget(
            name: .rfc7233.tests,
            dependencies: [
                .rfc7233
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String { var tests: Self { self + " Tests" } }