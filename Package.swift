import PackageDescription

let package = Package(
    name: "Vapor",
    targets: [
        // Framework
        Target(name: "Vapor", dependencies: ["Routing", "HTTPRouting", "TypeSafeRouting"]),

        // Routing
        Target(name: "Routing"),
        Target(name: "HTTPRouting", dependencies: ["Routing"]),

        // Type Safe
        Target(name: "TypeSafeRouting", dependencies: ["Routing", "HTTPRouting"]),
        Target(name: "TypeSafeGenerator"),

        // Development and Testing
        Target(name: "Development", dependencies: ["Vapor"]),
        Target(name: "Performance", dependencies: ["Vapor"])
    ],
    dependencies: [
        //SHA2 + HMAC hashing. Used by the core to create session identifiers.
        .Package(url: "https://github.com/CryptoKitten/HMAC.git", majorVersion: 0, minor: 10),
        .Package(url: "https://github.com/CryptoKitten/SHA2.git", majorVersion: 0, minor: 9),

        //ORM for interacting with databases
        .Package(url: "https://github.com/vapor/fluent.git", majorVersion: 0, minor: 9),

        //Core vapor transport layer
        .Package(url: "https://github.com/vapor/engine.git", majorVersion: 0, minor: 5),

        //Console protocol and implementation for powering command line interface.
        .Package(url: "https://github.com/vapor/console.git", majorVersion: 0, minor: 5),

        //JSON
        .Package(url: "https://github.com/vapor/json.git", majorVersion: 0, minor: 4)
    ],
    exclude: [
        // No excludes currently
    ]
)
