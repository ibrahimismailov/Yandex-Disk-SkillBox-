//
//  Keychain.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 24.04.2023.
//

import UIKit
import Security

struct KeychainManager {
    static let deviceID = UIDevice.current.identifierForVendor!.uuidString

    static var keychainQuery: [String: Any] = {
        return [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: "com.example.myapp.deviceID",
            kSecAttrAccount as String: "myDeviceID",
            kSecValueData as String: Data(deviceID.utf8),
            kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
    }()
    
   static var keychainQueryDelete: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrService as String: "com.example.myapp.deviceID",
        kSecAttrAccount as String: "myDeviceID"
    ]

}

