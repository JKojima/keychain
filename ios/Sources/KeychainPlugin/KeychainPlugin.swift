import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(KeychainPlugin)
public class KeychainPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "KeychainPlugin"
    public let jsName = "Keychain"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "save", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "load", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "delete", returnType: CAPPluginReturnPromise)
    ]

    @objc func save(_ call: CAPPluginCall) {
        let key = call.getString("key") ?? ""
        if key.isEmpty {
            call.reject("key is empty")
            return
        }
        let value = call.getString("value") ?? ""
      guard let data = value.data(using: .utf8) else {
          print("文字列をDataに変換できませんでした")
          return
      }

        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecValueData as String: data
        ] as CFDictionary

        SecItemDelete(query) // 同じキーがあれば削除してから登録

        let status = SecItemAdd(query, nil)
        if (status == errSecSuccess) {
            call.resolve(["value": data])
        } else {
            call.reject("failed to save")
        }
    }

    @objc func load(_ call: CAPPluginCall) {
        let key = call.getString("key") ?? ""
        // キーが存在しない場合は nil を返す
        if key.isEmpty {
            call.reject("key is empty")
            return
        }

        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecReturnData: kCFBooleanTrue!,
            kSecMatchLimit: kSecMatchLimitOne
        ] as CFDictionary

        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(query, &dataTypeRef)
      
        if status == errSecSuccess, let data = dataTypeRef as? Data,
            let stringValue = String(data: data, encoding: .utf8) {
            call.resolve(["value": stringValue])
            return
        }


        call.reject("failed to load")
    }

    @objc func delete(_ call: CAPPluginCall) {

        let key = call.getString("key") ?? ""
        if key.isEmpty {
            call.reject("key is empty")
            return
        }
        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key
        ] as CFDictionary

        SecItemDelete(query)
        call.resolve(["value": "success"])
    }
}
