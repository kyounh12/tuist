extension Config {
    /// Options for project generation.
    public struct GenerationOptions: Codable, Equatable {
        /// When passed, Xcode will resolve its Package Manager dependencies using the system-defined
        /// accounts (for example, git) instead of the Xcode-defined accounts
        public let resolveDependenciesWithSystemScm: Bool

        /// Disables locking Swift packages. This can speed up generation but does increase risk if packages are not locked
        /// in their declarations.
        public let disablePackageVersionLocking: Bool
        
        /// When passed, Xcode will resolve packages using the versions specified in `package.resolved` file.
        public let onlyUsePackageVersionsFromResolvedFile: Bool

        public static func options(
            resolveDependenciesWithSystemScm: Bool = false,
            disablePackageVersionLocking: Bool = false,
            onlyUsePackageVersionsFromResolvedFile: Bool = false
        ) -> Self {
            self.init(
                resolveDependenciesWithSystemScm: resolveDependenciesWithSystemScm,
                disablePackageVersionLocking: disablePackageVersionLocking,
                onlyUsePackageVersionsFromResolvedFile: onlyUsePackageVersionsFromResolvedFile
            )
        }
    }
}
