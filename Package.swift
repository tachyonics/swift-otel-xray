// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "swift-otel-xray",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "OpenTelemetryXRay", targets: ["OpenTelemetryXRay"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tachyonics/swift-otel.git", branch: "close_grpc_channel_gracefully"),
    ],
    targets: [
        .target(name: "OpenTelemetryXRay", dependencies: [
            .product(name: "OpenTelemetry", package: "swift-otel"),
        ]),
        .testTarget(name: "OpenTelemetryXRayTests", dependencies: [
            .target(name: "OpenTelemetryXRay"),
        ]),
    ]
)
