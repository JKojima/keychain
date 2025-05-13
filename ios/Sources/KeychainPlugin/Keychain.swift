import Foundation

@objc public class Keychain: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
