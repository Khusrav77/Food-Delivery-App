
import PackageDescription

let package = Package(
    name: "FoodDeliveriApp",
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "10.27.0")),
    ],
    targets: [
        .target(
            name: "YourProject",
            dependencies: [
                .product(name: "FirebaseAuth", package: "Firebase"),
                .product(name: "FirebaseFirestore", package: "Firebase")
            ]
        ),
    ]
)

