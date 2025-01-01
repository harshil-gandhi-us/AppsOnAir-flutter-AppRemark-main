// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    // TODO: Update your plugin name.
    name: "appsonair_flutter_appremark",
    platforms: [
        // TODO: Update the platforms your plugin supports.
        // If your plugin only supports iOS, remove `.macOS(...)`.
        // If your plugin only supports macOS, remove `.iOS(...)`.
        .iOS("12.0")
    ],
    products: [
        // TODO: Update your library and target names.
        // If the plugin name contains "_", replace with "-" for the library name.
        .library(name: "appsonair-flutter-appremark", type: .dynamic, targets: ["appsonair_flutter_appremark"])
    ],
    dependencies: [],
    targets: [
        .target(
            // TODO: Update your target name.
            name: "appsonair_flutter_appremark",
            dependencies: [],
            path: "Sources", // Path to the directory with only Swift files
            exclude: ["AppRemarkFlutterSdkPlugin.h", "AppRemarkFlutterSdkPlugin.m"], // Optional: Exclude non-Swift files
            sources: ["AppsonairFlutterAppRemarkPlugin.swift"]
                // TODO: If your plugin requires a privacy manifest
                // (e.g. if it uses any required reason APIs), update the PrivacyInfo.xcprivacy file
                // to describe your plugin's privacy impact, and then uncomment this line.
                // For more information, see:
                // https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                // .process("PrivacyInfo.xcprivacy"),

                // TODO: If you have other resources that need to be bundled with your plugin, refer to
                // the following instructions to add them:
                // https://developer.apple.com/documentation/xcode/bundling-resources-with-a-swift-package
        )
    ]
)