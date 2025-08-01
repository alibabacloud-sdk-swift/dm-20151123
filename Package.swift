// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
        name: "AlibabacloudDm20151123",
        platforms: [.macOS(.v10_15),
                    .iOS(.v13),
                    .tvOS(.v13),
                    .watchOS(.v6)],
        products: [
            .library(
                    name: "AlibabacloudDm20151123",
                    targets: ["AlibabacloudDm20151123"])
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            .package(url: "https://github.com/aliyun/tea-swift.git", from: "1.0.3"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-utils", from: "1.0.6"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-xml", from: "1.0.1"),
            .package(url: "https://github.com/aliyun/credentials-swift", from: "1.0.1"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/tea-fileform", from: "1.0.3"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/darabonba-number", from: "1.0.0"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/darabonba-openapi", from: "1.0.7"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/openapi-util", from: "1.0.1"),
            .package(url: "https://github.com/alibabacloud-sdk-swift/endpoint-util", from: "1.0.0"),
        ],
        targets: [
            .target(
                    name: "AlibabacloudDm20151123",
                    dependencies: [
                        .product(name: "Tea", package: "tea-swift"),
                        .product(name: "TeaUtils", package: "tea-utils"),
                        .product(name: "DarabonbaXML", package: "tea-xml"),
                        .product(name: "AlibabaCloudCredentials", package: "credentials-swift"),
                        .product(name: "TeaFileForm", package: "tea-fileform"),
                        .product(name: "DarabonbaNumber", package: "darabonba-number"),
                        .product(name: "AlibabacloudOpenApi", package: "darabonba-openapi"),
                        .product(name: "AlibabaCloudOpenApiUtil", package: "openapi-util"),
                        .product(name: "AlibabacloudEndpointUtil", package: "endpoint-util")
                    ]),
        ],
        swiftLanguageVersions: [.v5]
)
