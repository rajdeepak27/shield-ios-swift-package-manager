// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let version = "1-5-27"
let shieldfraud_checksum = "d24228856a33cdae99ac1fc40ad5827d50341c5972be02d215f1d99092fa4060"
let shieldcredit_checksum = "2a436ed4162b3a00f870eeb53605cc5e5d95764c20837658f1505fcb18dbbeeb"

let package = Package(
    name: "shield-ios-swift-package-manager",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ShieldFraud",
            targets: ["ShieldFraud"]
        ),
        // This library is not designed to be imported into client source code.
        .library(
            name: "ShieldCredit",
            targets: ["ShieldCredit"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        .binaryTarget(
            name: "ShieldFraud",
            url: "https://s3.amazonaws.com/cashshield-sdk/shield-ios-swift-\(version).zip",
            checksum: shieldfraud_checksum
        ),
        .binaryTarget(
            name: "ShieldCredit",
            url: "https://s3.amazonaws.com/cashshield-sdk/shieldcredit-ios-swift-\(version).zip",
            checksum: shieldcredit_checksum
        )
    ]
)
