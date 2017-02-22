import PackageDescription

let package = Package(
    name: "StravaResultKit",
    dependencies: [
        .Package(url: "https://github.com/StravaKit/StravaKit.git", majorVersion: 0, minorVersion: 9),
        .Package(url: "https://github.com/antitypical/Result.git", majorVersion: 3, minorVersion: 1)
    ]
)