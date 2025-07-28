public class SecureConfigurationManager {
    public static let shared = SecureConfigurationManager()
    
    private let deepgramApiKey = "54a8ca3bdf2c63e78138369d0e66275dedeb4c5e"
    private let fleksyLicenseKey = "f001f040-796b-4461-b0ab-c602bbba909d"
    private let fleksyLicenseSecret = "c1ced9261e612d3720f54839efc2d9cd"
    
    private init() {}
    
    public func getDeepgramApiKey() -> String {
        return deepgramApiKey
    }
    
    public func getFleksyLicenseKey() -> String {
        return fleksyLicenseKey
    }
    
    public func getFleksyLicenseSecret() -> String {
        return fleksyLicenseSecret
    }
} 