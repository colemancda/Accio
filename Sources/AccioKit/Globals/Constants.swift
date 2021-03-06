import Foundation

enum Constants {
    static var useTestPaths: Bool = false

    static let buildPath: String = ".accio"
    static let dependenciesPath: String = "Dependencies"
    static let xcodeDependenciesGroup: String = "Dependencies"
    static let copyBuildScript: String = "Accio"
    static let copyFilesPhase: String = "Accio"
    static let configFilePath: String = FileManager.applicationSupportDirUrl.appendingPathComponent("Accio/config.json").path
    static let temporaryFrameworksUrl: URL = FileManager.default.temporaryDirectory.appendingPathComponent("Accio/BuildProducts")
    static let temporaryUncachingUrl: URL = FileManager.default.temporaryDirectory.appendingPathComponent("Accio/Uncaching")

    static var localCachePath: String {
        if useTestPaths {
            return FileManager.userCacheDirUrl.appendingPathComponent("AccioTest/Cache").path
        }

        return FileManager.userCacheDirUrl.appendingPathComponent("Accio/Cache").path
    }

    static var swiftVersion: String {
        #if swift(>=6.0)
            return "Swift-6.0"
        #elseif swift(>=5.2)
            return "Swift-5.2"
        #elseif swift(>=5.1)
            return "Swift-5.1"
        #elseif swift(>=5.0)
            return "Swift-5.0"
        #else
            return "Swift-4.2"
        #endif
    }
}
